package com.google.common.base;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes2.dex */
public final class Suppliers {

    /* loaded from: classes2.dex */
    private interface SupplierFunction<T> extends Function<Supplier<T>, T> {
    }

    private Suppliers() {
    }

    public static <F, T> Supplier<T> compose(Function<? super F, T> function, Supplier<F> supplier) {
        return new SupplierComposition(function, supplier);
    }

    /* loaded from: classes2.dex */
    private static class SupplierComposition<F, T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Function<? super F, T> function;
        final Supplier<F> supplier;

        SupplierComposition(Function<? super F, T> function, Supplier<F> supplier) {
            this.function = (Function) Preconditions.checkNotNull(function);
            this.supplier = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.function.apply((F) this.supplier.get());
        }

        @Override // java.lang.Object
        public boolean equals(@NullableDecl Object obj) {
            if (!(obj instanceof SupplierComposition)) {
                return false;
            }
            SupplierComposition supplierComposition = (SupplierComposition) obj;
            if (!this.function.equals(supplierComposition.function) || !this.supplier.equals(supplierComposition.supplier)) {
                return false;
            }
            return true;
        }

        @Override // java.lang.Object
        public int hashCode() {
            return Objects.hashCode(this.function, this.supplier);
        }

        @Override // java.lang.Object
        public String toString() {
            return "Suppliers.compose(" + this.function + ", " + this.supplier + ")";
        }
    }

    public static <T> Supplier<T> memoize(Supplier<T> supplier) {
        if ((supplier instanceof NonSerializableMemoizingSupplier) || (supplier instanceof MemoizingSupplier)) {
            return supplier;
        }
        return supplier instanceof Serializable ? new MemoizingSupplier(supplier) : new NonSerializableMemoizingSupplier(supplier);
    }

    /* loaded from: classes2.dex */
    static class MemoizingSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> delegate;
        volatile transient boolean initialized;
        @NullableDecl
        transient T value;

        MemoizingSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    if (!this.initialized) {
                        T t = this.delegate.get();
                        this.value = t;
                        this.initialized = true;
                        return t;
                    }
                }
            }
            return this.value;
        }

        @Override // java.lang.Object
        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    /* loaded from: classes2.dex */
    static class NonSerializableMemoizingSupplier<T> implements Supplier<T> {
        volatile Supplier<T> delegate;
        volatile boolean initialized;
        @NullableDecl
        T value;

        NonSerializableMemoizingSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    if (!this.initialized) {
                        T t = this.delegate.get();
                        this.value = t;
                        this.initialized = true;
                        this.delegate = null;
                        return t;
                    }
                }
            }
            return this.value;
        }

        public String toString() {
            Object obj = this.delegate;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (obj == null) {
                obj = "<supplier that returned " + this.value + ">";
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    public static <T> Supplier<T> memoizeWithExpiration(Supplier<T> supplier, long j, TimeUnit timeUnit) {
        return new ExpiringMemoizingSupplier(supplier, j, timeUnit);
    }

    /* loaded from: classes2.dex */
    static class ExpiringMemoizingSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> delegate;
        final long durationNanos;
        volatile transient long expirationNanos;
        @NullableDecl
        volatile transient T value;

        ExpiringMemoizingSupplier(Supplier<T> supplier, long j, TimeUnit timeUnit) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
            this.durationNanos = timeUnit.toNanos(j);
            Preconditions.checkArgument(j > 0, "duration (%s %s) must be > 0", j, timeUnit);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            long j = this.expirationNanos;
            long systemNanoTime = Platform.systemNanoTime();
            if (j == 0 || systemNanoTime - j >= 0) {
                synchronized (this) {
                    if (j == this.expirationNanos) {
                        T t = this.delegate.get();
                        this.value = t;
                        long j2 = systemNanoTime + this.durationNanos;
                        if (j2 == 0) {
                            j2 = 1;
                        }
                        this.expirationNanos = j2;
                        return t;
                    }
                }
            }
            return this.value;
        }

        @Override // java.lang.Object
        public String toString() {
            return "Suppliers.memoizeWithExpiration(" + this.delegate + ", " + this.durationNanos + ", NANOS)";
        }
    }

    public static <T> Supplier<T> ofInstance(@NullableDecl T t) {
        return new SupplierOfInstance(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SupplierOfInstance<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        @NullableDecl
        final T instance;

        SupplierOfInstance(@NullableDecl T t) {
            this.instance = t;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.instance;
        }

        @Override // java.lang.Object
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return Objects.equal(this.instance, ((SupplierOfInstance) obj).instance);
            }
            return false;
        }

        @Override // java.lang.Object
        public int hashCode() {
            return Objects.hashCode(this.instance);
        }

        @Override // java.lang.Object
        public String toString() {
            return "Suppliers.ofInstance(" + this.instance + ")";
        }
    }

    public static <T> Supplier<T> synchronizedSupplier(Supplier<T> supplier) {
        return new ThreadSafeSupplier(supplier);
    }

    /* loaded from: classes2.dex */
    private static class ThreadSafeSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> delegate;

        ThreadSafeSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            T t;
            synchronized (this.delegate) {
                t = this.delegate.get();
            }
            return t;
        }

        @Override // java.lang.Object
        public String toString() {
            return "Suppliers.synchronizedSupplier(" + this.delegate + ")";
        }
    }

    public static <T> Function<Supplier<T>, T> supplierFunction() {
        return SupplierFunctionImpl.INSTANCE;
    }

    /* loaded from: classes2.dex */
    private enum SupplierFunctionImpl implements SupplierFunction<Object> {
        INSTANCE;

        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return "Suppliers.supplierFunction()";
        }

        public Object apply(Supplier<Object> supplier) {
            return supplier.get();
        }
    }
}
