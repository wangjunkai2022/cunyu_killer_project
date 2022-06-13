package com.github.florent37.assets_audio_player;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Resolver.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \f2\u00020\u0001:\u0001\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/github/florent37/assets_audio_player/UriResolver;", "", c.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "audioPath", "", "uri", "contentPath", "Landroid/net/Uri;", "columnName", "imagePath", "Companion", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class UriResolver {
    public static final Companion Companion = new Companion(null);
    public static final String PREFIX_CONTENT = "content://media";
    private final Context context;

    public UriResolver(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        this.context = context;
    }

    /* compiled from: Resolver.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/github/florent37/assets_audio_player/UriResolver$Companion;", "", "()V", "PREFIX_CONTENT", "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable, java.lang.String] */
    private final String contentPath(Uri uri, String str) {
        String str2;
        ContentResolver contentResolver = this.context.getContentResolver();
        th = 0;
        if (contentResolver == null) {
            return th;
        }
        boolean z = true;
        Cursor query = contentResolver.query(uri, new String[]{str}, null, null, null);
        if (query == null) {
            return th;
        }
        Cursor cursor = query;
        try {
            Cursor cursor2 = cursor;
            if (cursor2.getCount() != 1) {
                z = false;
            }
            Cursor cursor3 = z ? cursor2 : th;
            if (cursor3 == null) {
                str2 = th;
            } else {
                cursor3.moveToFirst();
                str2 = cursor3.getString(cursor2.getColumnIndex(str));
            }
            return str2;
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
                CloseableKt.closeFinally(cursor, th);
            }
        }
    }

    public final String audioPath(String str) {
        if (str == null) {
            return str;
        }
        try {
            if (!StringsKt.startsWith$default(str, PREFIX_CONTENT, false, 2, (Object) null)) {
                return str;
            }
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "uriParsed");
            String contentPath = contentPath(parse, "_data");
            return contentPath == null ? str : contentPath;
        } catch (Throwable unused) {
            return str;
        }
    }

    public final String imagePath(String str) {
        if (str == null) {
            return str;
        }
        try {
            if (!StringsKt.startsWith$default(str, PREFIX_CONTENT, false, 2, (Object) null)) {
                return str;
            }
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "uriParsed");
            String contentPath = contentPath(parse, "_data");
            return contentPath == null ? str : contentPath;
        } catch (Throwable unused) {
            return str;
        }
    }
}
