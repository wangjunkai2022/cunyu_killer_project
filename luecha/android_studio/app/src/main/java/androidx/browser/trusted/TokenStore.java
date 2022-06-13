package androidx.browser.trusted;

/* loaded from: classes2.dex */
public interface TokenStore {
    Token load();

    void store(Token token);
}
