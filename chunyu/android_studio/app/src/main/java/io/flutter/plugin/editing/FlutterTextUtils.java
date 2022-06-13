package io.flutter.plugin.editing;

import io.flutter.embedding.engine.FlutterJNI;

/* loaded from: classes2.dex */
class FlutterTextUtils {
    public static final int CANCEL_TAG = 917631;
    public static final int CARRIAGE_RETURN = 13;
    public static final int COMBINING_ENCLOSING_KEYCAP = 8419;
    public static final int LINE_FEED = 10;
    public static final int ZERO_WIDTH_JOINER = 8205;
    private final FlutterJNI flutterJNI;

    public boolean isKeycapBase(int i) {
        return (48 <= i && i <= 57) || i == 35 || i == 42;
    }

    public boolean isTagSpecChar(int i) {
        return 917536 <= i && i <= 917630;
    }

    public FlutterTextUtils(FlutterJNI flutterJNI) {
        this.flutterJNI = flutterJNI;
    }

    public boolean isEmoji(int i) {
        return this.flutterJNI.isCodePointEmoji(i);
    }

    public boolean isEmojiModifier(int i) {
        return this.flutterJNI.isCodePointEmojiModifier(i);
    }

    public boolean isEmojiModifierBase(int i) {
        return this.flutterJNI.isCodePointEmojiModifierBase(i);
    }

    public boolean isVariationSelector(int i) {
        return this.flutterJNI.isCodePointVariantSelector(i);
    }

    public boolean isRegionalIndicatorSymbol(int i) {
        return this.flutterJNI.isCodePointRegionalIndicator(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0158 A[EDGE_INSN: B:102:0x0158->B:95:0x0158 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0150  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public int getOffsetBefore(java.lang.CharSequence r9, int r10) {
        /*
        // Method dump skipped, instructions count: 346
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.editing.FlutterTextUtils.getOffsetBefore(java.lang.CharSequence, int):int");
    }

    public int getOffsetAfter(CharSequence charSequence, int i) {
        int charCount;
        int length = charSequence.length();
        int i2 = length - 1;
        if (i >= i2) {
            return length;
        }
        int codePointAt = Character.codePointAt(charSequence, i);
        int charCount2 = Character.charCount(codePointAt);
        int i3 = i + charCount2;
        int i4 = 0;
        if (i3 == 0) {
            return 0;
        }
        if (codePointAt == 10) {
            if (Character.codePointAt(charSequence, i3) == 13) {
                charCount2++;
            }
            return i + charCount2;
        } else if (!isRegionalIndicatorSymbol(codePointAt)) {
            if (isKeycapBase(codePointAt)) {
                charCount2 += Character.charCount(codePointAt);
            }
            if (codePointAt == 8419) {
                int codePointBefore = Character.codePointBefore(charSequence, i3);
                int charCount3 = i3 + Character.charCount(codePointBefore);
                if (charCount3 < length && isVariationSelector(codePointBefore)) {
                    int codePointAt2 = Character.codePointAt(charSequence, charCount3);
                    if (isKeycapBase(codePointAt2)) {
                        charCount2 += Character.charCount(codePointBefore) + Character.charCount(codePointAt2);
                    }
                } else if (isKeycapBase(codePointBefore)) {
                    charCount2 += Character.charCount(codePointBefore);
                }
                return i + charCount2;
            }
            if (isEmoji(codePointAt)) {
                int i5 = i3;
                int i6 = 0;
                int i7 = codePointAt;
                boolean z = false;
                do {
                    if (z) {
                        charCount2 += Character.charCount(i7) + i6 + 1;
                        z = false;
                    }
                    if (isEmojiModifier(i7)) {
                        break;
                    }
                    if (i5 < length) {
                        i7 = Character.codePointAt(charSequence, i5);
                        i5 += Character.charCount(i7);
                        if (i7 != 8419) {
                            if (!isEmojiModifier(i7)) {
                                if (!isVariationSelector(i7)) {
                                    if (i7 == 8205) {
                                        int codePointAt3 = Character.codePointAt(charSequence, i5);
                                        i5 += Character.charCount(codePointAt3);
                                        if (i5 >= length || !isVariationSelector(codePointAt3)) {
                                            i7 = codePointAt3;
                                            i6 = 0;
                                        } else {
                                            int codePointAt4 = Character.codePointAt(charSequence, i5);
                                            int charCount4 = Character.charCount(codePointAt4);
                                            i5 += Character.charCount(codePointAt4);
                                            i6 = charCount4;
                                            i7 = codePointAt4;
                                        }
                                        z = true;
                                        if (i5 < length || !z) {
                                            break;
                                        }
                                    }
                                } else {
                                    charCount = Character.charCount(i7);
                                }
                            } else {
                                charCount = Character.charCount(i7);
                            }
                            charCount2 += charCount + 0;
                            break;
                        }
                        int codePointBefore2 = Character.codePointBefore(charSequence, i5);
                        int charCount5 = i5 + Character.charCount(codePointBefore2);
                        if (charCount5 < length && isVariationSelector(codePointBefore2)) {
                            int codePointAt5 = Character.codePointAt(charSequence, charCount5);
                            if (isKeycapBase(codePointAt5)) {
                                charCount2 += Character.charCount(codePointBefore2) + Character.charCount(codePointAt5);
                            }
                        } else if (isKeycapBase(codePointBefore2)) {
                            charCount2 += Character.charCount(codePointBefore2);
                        }
                        return i + charCount2;
                    }
                    i6 = 0;
                    if (i5 < length) {
                        break;
                        break;
                    }
                } while (isEmoji(i7));
            }
            return i + charCount2;
        } else if (i3 >= i2 || !isRegionalIndicatorSymbol(Character.codePointAt(charSequence, i3))) {
            return i3;
        } else {
            int i8 = i;
            while (i8 > 0 && isRegionalIndicatorSymbol(Character.codePointBefore(charSequence, i))) {
                i8 -= Character.charCount(Character.codePointBefore(charSequence, i));
                i4++;
            }
            if (i4 % 2 == 0) {
                charCount2 += 2;
            }
            return i + charCount2;
        }
    }
}
