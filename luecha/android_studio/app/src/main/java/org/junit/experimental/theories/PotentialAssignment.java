package org.junit.experimental.theories;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class PotentialAssignment {
    public abstract String getDescription() throws CouldNotGenerateValueException;

    public abstract Object getValue() throws CouldNotGenerateValueException;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class CouldNotGenerateValueException extends Exception {
        private static final long serialVersionUID = 1;

        public CouldNotGenerateValueException() {
        }

        public CouldNotGenerateValueException(Throwable th) {
            super(th);
        }
    }

    public static PotentialAssignment forValue(final String str, final Object obj) {
        return new PotentialAssignment() { // from class: org.junit.experimental.theories.PotentialAssignment.1
            @Override // org.junit.experimental.theories.PotentialAssignment
            public Object getValue() {
                return obj;
            }

            public String toString() {
                return String.format("[%s]", obj);
            }

            @Override // org.junit.experimental.theories.PotentialAssignment
            public String getDescription() {
                String format;
                Object obj2 = obj;
                if (obj2 == null) {
                    format = "null";
                } else {
                    try {
                        format = String.format("\"%s\"", obj2);
                    } catch (Throwable th) {
                        format = String.format("[toString() threw %s: %s]", th.getClass().getSimpleName(), th.getMessage());
                    }
                }
                return String.format("%s <from %s>", format, str);
            }
        };
    }
}
