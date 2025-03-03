package kotlin.text;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: Indent.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002¨\u0006\u0015"}, d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, k = 5, mv = {1, 6, 0}, xi = 49, xs = "kotlin/text/StringsKt")
/* loaded from: classes2.dex */
class StringsKt__IndentKt extends StringsKt__AppendableKt {
    public static /* synthetic */ String trimMargin$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return StringsKt.trimMargin(str, str2);
    }

    public static final String trimMargin(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "marginPrefix");
        return StringsKt.replaceIndentByMargin(str, "", str2);
    }

    public static /* synthetic */ String replaceIndentByMargin$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            str3 = "|";
        }
        return StringsKt.replaceIndentByMargin(str, str2, str3);
    }

    public static final String replaceIndentByMargin(String str, String str2, String str3) {
        int i;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "newIndent");
        Intrinsics.checkNotNullParameter(str3, "marginPrefix");
        if (!StringsKt.isBlank(str3)) {
            List<String> lines = StringsKt.lines(str);
            int length = str.length() + (str2.length() * lines.size());
            Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(str2);
            int lastIndex = CollectionsKt.getLastIndex(lines);
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (Object obj : lines) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String str4 = (String) obj;
                String str5 = null;
                if ((i2 == 0 || i2 == lastIndex) && StringsKt.isBlank(str4)) {
                    str4 = null;
                } else {
                    String str6 = str4;
                    int length2 = str6.length();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length2) {
                            i = -1;
                            break;
                        }
                        int i5 = i4 + 1;
                        if (!CharsKt.isWhitespace(str6.charAt(i4))) {
                            i = i4;
                            break;
                        }
                        i4 = i5;
                    }
                    if (i != -1 && StringsKt.startsWith$default(str4, str3, i, false, 4, (Object) null)) {
                        str5 = str4.substring(i + str3.length());
                        Intrinsics.checkNotNullExpressionValue(str5, "this as java.lang.String).substring(startIndex)");
                    }
                    if (str5 != null) {
                        str4 = indentFunction$StringsKt__IndentKt.invoke(str5);
                    }
                }
                if (str4 != null) {
                    arrayList.add(str4);
                }
                i2 = i3;
            }
            String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
            Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    public static final String trimIndent(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.replaceIndent(str, "");
    }

    public static /* synthetic */ String replaceIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return StringsKt.replaceIndent(str, str2);
    }

    public static final String replaceIndent(String str, String str2) {
        int i;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "newIndent");
        List<String> lines = StringsKt.lines(str);
        List<String> list = lines;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList<String> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (String str3 : arrayList2) {
            arrayList3.add(Integer.valueOf(indentWidth$StringsKt__IndentKt(str3)));
        }
        Integer num = (Integer) CollectionsKt.minOrNull((Iterable<? extends Comparable>) arrayList3);
        int i2 = 0;
        if (num == null) {
            i = 0;
        } else {
            i = num.intValue();
        }
        int length = str.length() + (str2.length() * lines.size());
        Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(str2);
        int lastIndex = CollectionsKt.getLastIndex(lines);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String str4 = (String) obj2;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt.isBlank(str4)) {
                str4 = null;
            } else {
                String drop = StringsKt.drop(str4, i);
                if (drop != null) {
                    str4 = indentFunction$StringsKt__IndentKt.invoke(drop);
                }
            }
            if (str4 != null) {
                arrayList4.add(str4);
            }
            i2 = i3;
        }
        String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList4, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    public static /* synthetic */ String prependIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "    ";
        }
        return StringsKt.prependIndent(str, str2);
    }

    public static final String prependIndent(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "indent");
        return SequencesKt.joinToString$default(SequencesKt.map(StringsKt.lineSequence(str), new Function1<String, String>(str2) { // from class: kotlin.text.StringsKt__IndentKt$prependIndent$1
            final /* synthetic */ String $indent;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$indent = r1;
            }

            public final String invoke(String str3) {
                Intrinsics.checkNotNullParameter(str3, "it");
                if (!StringsKt.isBlank(str3)) {
                    return Intrinsics.stringPlus(this.$indent, str3);
                }
                if (str3.length() < this.$indent.length()) {
                    return this.$indent;
                }
                return str3;
            }
        }), "\n", null, null, 0, null, null, 62, null);
    }

    private static final int indentWidth$StringsKt__IndentKt(String str) {
        String str2 = str;
        int length = str2.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            int i2 = i + 1;
            if (!CharsKt.isWhitespace(str2.charAt(i))) {
                break;
            }
            i = i2;
        }
        return i == -1 ? str.length() : i;
    }

    private static final Function1<String, String> getIndentFunction$StringsKt__IndentKt(String str) {
        if (str.length() == 0) {
            return StringsKt__IndentKt$getIndentFunction$1.INSTANCE;
        }
        return new Function1<String, String>(str) { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$2
            final /* synthetic */ String $indent;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$indent = r1;
            }

            public final String invoke(String str2) {
                Intrinsics.checkNotNullParameter(str2, "line");
                return Intrinsics.stringPlus(this.$indent, str2);
            }
        };
    }

    private static final String reindent$StringsKt__IndentKt(List<String> list, int i, Function1<? super String, String> function1, Function1<? super String, String> function12) {
        int lastIndex = CollectionsKt.getLastIndex(list);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt.isBlank(str)) {
                str = null;
            } else {
                String invoke = function12.invoke(str);
                if (invoke != null) {
                    str = function1.invoke(invoke);
                }
            }
            if (str != null) {
                arrayList.add(str);
            }
            i2 = i3;
        }
        String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList, new StringBuilder(i), "\n", null, null, 0, null, null, 124, null)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }
}
