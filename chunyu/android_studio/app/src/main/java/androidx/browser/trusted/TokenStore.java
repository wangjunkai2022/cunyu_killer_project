package androidx.browser.trusted;

/* loaded from: classes4.dex */
public interface TokenStore {
    Token load();

    void store(Token token);
}
