package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class ClientSettings {
    public static final String KEY_CLIENT_SESSION_ID = "com.google.android.gms.common.internal.ClientSettings.sessionId";
    private final Set<Scope> zabr;
    private final int zabt;
    private final View zabu;
    private final String zabv;
    private final String zabw;
    private final Set<Scope> zaoa;
    private final Map<Api<?>, OptionalApiSettings> zaob;
    private final SignInOptions zaoc;
    private Integer zaod;
    private final Account zax;

    /* loaded from: classes2.dex */
    public static final class OptionalApiSettings {
        public final Set<Scope> mScopes;

        public OptionalApiSettings(Set<Scope> set) {
            Preconditions.checkNotNull(set);
            this.mScopes = Collections.unmodifiableSet(set);
        }
    }

    public static ClientSettings createDefault(Context context) {
        return new GoogleApiClient.Builder(context).buildClientSettings();
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, OptionalApiSettings> map, int i, View view, String str, String str2, SignInOptions signInOptions) {
        this.zax = account;
        this.zabr = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.zaob = map == null ? Collections.EMPTY_MAP : map;
        this.zabu = view;
        this.zabt = i;
        this.zabv = str;
        this.zabw = str2;
        this.zaoc = signInOptions;
        HashSet hashSet = new HashSet(this.zabr);
        for (OptionalApiSettings optionalApiSettings : this.zaob.values()) {
            hashSet.addAll(optionalApiSettings.mScopes);
        }
        this.zaoa = Collections.unmodifiableSet(hashSet);
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private View zabu;
        private String zabv;
        private String zabw;
        private Map<Api<?>, OptionalApiSettings> zaob;
        private ArraySet<Scope> zaoe;
        private Account zax;
        private int zabt = 0;
        private SignInOptions zaoc = SignInOptions.DEFAULT;

        public final Builder setAccount(Account account) {
            this.zax = account;
            return this;
        }

        public final Builder addRequiredScope(Scope scope) {
            if (this.zaoe == null) {
                this.zaoe = new ArraySet<>();
            }
            this.zaoe.add(scope);
            return this;
        }

        public final Builder addAllRequiredScopes(Collection<Scope> collection) {
            if (this.zaoe == null) {
                this.zaoe = new ArraySet<>();
            }
            this.zaoe.addAll(collection);
            return this;
        }

        public final Builder setOptionalApiSettingsMap(Map<Api<?>, OptionalApiSettings> map) {
            this.zaob = map;
            return this;
        }

        public final Builder setGravityForPopups(int i) {
            this.zabt = i;
            return this;
        }

        public final Builder setViewForPopups(View view) {
            this.zabu = view;
            return this;
        }

        public final Builder setRealClientPackageName(String str) {
            this.zabv = str;
            return this;
        }

        public final Builder setRealClientClassName(String str) {
            this.zabw = str;
            return this;
        }

        public final Builder setSignInOptions(SignInOptions signInOptions) {
            this.zaoc = signInOptions;
            return this;
        }

        public final ClientSettings build() {
            return new ClientSettings(this.zax, this.zaoe, this.zaob, this.zabt, this.zabu, this.zabv, this.zabw, this.zaoc);
        }
    }

    @Nullable
    @Deprecated
    public final String getAccountName() {
        Account account = this.zax;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @Nullable
    public final Account getAccount() {
        return this.zax;
    }

    public final Account getAccountOrDefault() {
        Account account = this.zax;
        if (account != null) {
            return account;
        }
        return new Account("<<default account>>", AccountType.GOOGLE);
    }

    public final int getGravityForPopups() {
        return this.zabt;
    }

    public final Set<Scope> getRequiredScopes() {
        return this.zabr;
    }

    public final Set<Scope> getAllRequestedScopes() {
        return this.zaoa;
    }

    public final Map<Api<?>, OptionalApiSettings> getOptionalApiSettings() {
        return this.zaob;
    }

    @Nullable
    public final String getRealClientPackageName() {
        return this.zabv;
    }

    @Nullable
    public final String getRealClientClassName() {
        return this.zabw;
    }

    @Nullable
    public final View getViewForPopups() {
        return this.zabu;
    }

    @Nullable
    public final SignInOptions getSignInOptions() {
        return this.zaoc;
    }

    @Nullable
    public final Integer getClientSessionId() {
        return this.zaod;
    }

    public final void setClientSessionId(Integer num) {
        this.zaod = num;
    }

    public final Set<Scope> getApplicableScopes(Api<?> api) {
        OptionalApiSettings optionalApiSettings = this.zaob.get(api);
        if (optionalApiSettings == null || optionalApiSettings.mScopes.isEmpty()) {
            return this.zabr;
        }
        HashSet hashSet = new HashSet(this.zabr);
        hashSet.addAll(optionalApiSettings.mScopes);
        return hashSet;
    }
}
