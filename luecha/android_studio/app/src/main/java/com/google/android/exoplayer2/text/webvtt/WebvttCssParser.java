package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ColorParser;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class WebvttCssParser {
    private static final String PROPERTY_BGCOLOR = "background-color";
    private static final String PROPERTY_COLOR = "color";
    private static final String PROPERTY_FONT_FAMILY = "font-family";
    private static final String PROPERTY_FONT_SIZE = "font-size";
    private static final String PROPERTY_FONT_STYLE = "font-style";
    private static final String PROPERTY_FONT_WEIGHT = "font-weight";
    private static final String PROPERTY_RUBY_POSITION = "ruby-position";
    private static final String PROPERTY_TEXT_COMBINE_UPRIGHT = "text-combine-upright";
    private static final String PROPERTY_TEXT_DECORATION = "text-decoration";
    private static final String RULE_END = "}";
    private static final String RULE_START = "{";
    private static final String TAG = "WebvttCssParser";
    private static final String VALUE_ALL = "all";
    private static final String VALUE_BOLD = "bold";
    private static final String VALUE_DIGITS = "digits";
    private static final String VALUE_ITALIC = "italic";
    private static final String VALUE_OVER = "over";
    private static final String VALUE_UNDER = "under";
    private static final String VALUE_UNDERLINE = "underline";
    private static final Pattern VOICE_NAME_PATTERN = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern FONT_SIZE_PATTERN = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final ParsableByteArray styleInput = new ParsableByteArray();
    private final StringBuilder stringBuilder = new StringBuilder();

    public List<WebvttCssStyle> parseBlock(ParsableByteArray parsableByteArray) {
        this.stringBuilder.setLength(0);
        int position = parsableByteArray.getPosition();
        skipStyleBlock(parsableByteArray);
        this.styleInput.reset(parsableByteArray.getData(), parsableByteArray.getPosition());
        this.styleInput.setPosition(position);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String parseSelector = parseSelector(this.styleInput, this.stringBuilder);
            if (parseSelector == null) {
                return arrayList;
            }
            if (!RULE_START.equals(parseNextToken(this.styleInput, this.stringBuilder))) {
                return arrayList;
            }
            WebvttCssStyle webvttCssStyle = new WebvttCssStyle();
            applySelectorToStyle(webvttCssStyle, parseSelector);
            String str = null;
            boolean z = false;
            while (!z) {
                int position2 = this.styleInput.getPosition();
                str = parseNextToken(this.styleInput, this.stringBuilder);
                boolean z2 = str == null || RULE_END.equals(str);
                if (!z2) {
                    this.styleInput.setPosition(position2);
                    parseStyleDeclaration(this.styleInput, webvttCssStyle, this.stringBuilder);
                }
                z = z2;
            }
            if (RULE_END.equals(str)) {
                arrayList.add(webvttCssStyle);
            }
        }
    }

    private static String parseSelector(ParsableByteArray parsableByteArray, StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        if (parsableByteArray.bytesLeft() < 5 || !"::cue".equals(parsableByteArray.readString(5))) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        String parseNextToken = parseNextToken(parsableByteArray, sb);
        if (parseNextToken == null) {
            return null;
        }
        if (RULE_START.equals(parseNextToken)) {
            parsableByteArray.setPosition(position);
            return "";
        }
        String readCueTarget = "(".equals(parseNextToken) ? readCueTarget(parsableByteArray) : null;
        if (!")".equals(parseNextToken(parsableByteArray, sb))) {
            return null;
        }
        return readCueTarget;
    }

    private static String readCueTarget(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        boolean z = false;
        while (position < limit && !z) {
            position++;
            z = ((char) parsableByteArray.getData()[position]) == ')';
        }
        return parsableByteArray.readString((position - 1) - parsableByteArray.getPosition()).trim();
    }

    private static void parseStyleDeclaration(ParsableByteArray parsableByteArray, WebvttCssStyle webvttCssStyle, StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        String parseIdentifier = parseIdentifier(parsableByteArray, sb);
        if (!"".equals(parseIdentifier) && ":".equals(parseNextToken(parsableByteArray, sb))) {
            skipWhitespaceAndComments(parsableByteArray);
            String parsePropertyValue = parsePropertyValue(parsableByteArray, sb);
            if (parsePropertyValue != null && !"".equals(parsePropertyValue)) {
                int position = parsableByteArray.getPosition();
                String parseNextToken = parseNextToken(parsableByteArray, sb);
                if (!";".equals(parseNextToken)) {
                    if (RULE_END.equals(parseNextToken)) {
                        parsableByteArray.setPosition(position);
                    } else {
                        return;
                    }
                }
                if ("color".equals(parseIdentifier)) {
                    webvttCssStyle.setFontColor(ColorParser.parseCssColor(parsePropertyValue));
                } else if (PROPERTY_BGCOLOR.equals(parseIdentifier)) {
                    webvttCssStyle.setBackgroundColor(ColorParser.parseCssColor(parsePropertyValue));
                } else {
                    boolean z = true;
                    if (PROPERTY_RUBY_POSITION.equals(parseIdentifier)) {
                        if (VALUE_OVER.equals(parsePropertyValue)) {
                            webvttCssStyle.setRubyPosition(1);
                        } else if (VALUE_UNDER.equals(parsePropertyValue)) {
                            webvttCssStyle.setRubyPosition(2);
                        }
                    } else if (PROPERTY_TEXT_COMBINE_UPRIGHT.equals(parseIdentifier)) {
                        if (!"all".equals(parsePropertyValue) && !parsePropertyValue.startsWith(VALUE_DIGITS)) {
                            z = false;
                        }
                        webvttCssStyle.setCombineUpright(z);
                    } else if (PROPERTY_TEXT_DECORATION.equals(parseIdentifier)) {
                        if ("underline".equals(parsePropertyValue)) {
                            webvttCssStyle.setUnderline(true);
                        }
                    } else if (PROPERTY_FONT_FAMILY.equals(parseIdentifier)) {
                        webvttCssStyle.setFontFamily(parsePropertyValue);
                    } else if (PROPERTY_FONT_WEIGHT.equals(parseIdentifier)) {
                        if ("bold".equals(parsePropertyValue)) {
                            webvttCssStyle.setBold(true);
                        }
                    } else if (PROPERTY_FONT_STYLE.equals(parseIdentifier)) {
                        if ("italic".equals(parsePropertyValue)) {
                            webvttCssStyle.setItalic(true);
                        }
                    } else if (PROPERTY_FONT_SIZE.equals(parseIdentifier)) {
                        parseFontSize(parsePropertyValue, webvttCssStyle);
                    }
                }
            }
        }
    }

    static void skipWhitespaceAndComments(ParsableByteArray parsableByteArray) {
        boolean z = true;
        while (true) {
            while (parsableByteArray.bytesLeft() > 0 && z) {
                if (!maybeSkipWhitespace(parsableByteArray) && !maybeSkipComment(parsableByteArray)) {
                    z = false;
                }
            }
            return;
        }
    }

    static String parseNextToken(ParsableByteArray parsableByteArray, StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        if (parsableByteArray.bytesLeft() == 0) {
            return null;
        }
        String parseIdentifier = parseIdentifier(parsableByteArray, sb);
        if (!"".equals(parseIdentifier)) {
            return parseIdentifier;
        }
        StringBuilder sb2 = new StringBuilder(1);
        sb2.append((char) parsableByteArray.readUnsignedByte());
        return sb2.toString();
    }

    private static boolean maybeSkipWhitespace(ParsableByteArray parsableByteArray) {
        char peekCharAtPosition = peekCharAtPosition(parsableByteArray, parsableByteArray.getPosition());
        if (peekCharAtPosition != '\t' && peekCharAtPosition != '\n' && peekCharAtPosition != '\f' && peekCharAtPosition != '\r' && peekCharAtPosition != ' ') {
            return false;
        }
        parsableByteArray.skipBytes(1);
        return true;
    }

    static void skipStyleBlock(ParsableByteArray parsableByteArray) {
        do {
        } while (!TextUtils.isEmpty(parsableByteArray.readLine()));
    }

    private static char peekCharAtPosition(ParsableByteArray parsableByteArray, int i) {
        return (char) parsableByteArray.getData()[i];
    }

    private static String parsePropertyValue(ParsableByteArray parsableByteArray, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int position = parsableByteArray.getPosition();
            String parseNextToken = parseNextToken(parsableByteArray, sb);
            if (parseNextToken == null) {
                return null;
            }
            if (RULE_END.equals(parseNextToken) || ";".equals(parseNextToken)) {
                parsableByteArray.setPosition(position);
                z = true;
            } else {
                sb2.append(parseNextToken);
            }
        }
        return sb2.toString();
    }

    private static boolean maybeSkipComment(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        if (position + 2 > limit) {
            return false;
        }
        int i = position + 1;
        if (data[position] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (data[i] != 42) {
            return false;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= limit) {
                parsableByteArray.skipBytes(limit - parsableByteArray.getPosition());
                return true;
            } else if (((char) data[i2]) == '*' && ((char) data[i3]) == '/') {
                i2 = i3 + 1;
                limit = i2;
            } else {
                i2 = i3;
            }
        }
    }

    private static String parseIdentifier(ParsableByteArray parsableByteArray, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit && !z) {
            char c = (char) parsableByteArray.getData()[position];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                position++;
                sb.append(c);
            }
        }
        parsableByteArray.skipBytes(position - parsableByteArray.getPosition());
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0088  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static void parseFontSize(java.lang.String r6, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle r7) {
        /*
            java.util.regex.Pattern r0 = com.google.android.exoplayer2.text.webvtt.WebvttCssParser.FONT_SIZE_PATTERN
            java.lang.String r1 = com.google.common.base.Ascii.toLowerCase(r6)
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r1 = r0.matches()
            if (r1 != 0) goto L_0x0036
            java.lang.String r7 = java.lang.String.valueOf(r6)
            int r7 = r7.length()
            int r7 = r7 + 22
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r7)
            java.lang.String r7 = "Invalid font-size: '"
            r0.append(r7)
            r0.append(r6)
            java.lang.String r6 = "'."
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r7 = "WebvttCssParser"
            com.google.android.exoplayer2.util.Log.w(r7, r6)
            return
        L_0x0036:
            r6 = 2
            java.lang.String r1 = r0.group(r6)
            java.lang.Object r1 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r1)
            java.lang.String r1 = (java.lang.String) r1
            r2 = -1
            int r3 = r1.hashCode()
            r4 = 37
            r5 = 1
            if (r3 == r4) goto L_0x0068
            r4 = 3240(0xca8, float:4.54E-42)
            if (r3 == r4) goto L_0x005e
            r4 = 3592(0xe08, float:5.033E-42)
            if (r3 == r4) goto L_0x0054
            goto L_0x0072
        L_0x0054:
            java.lang.String r3 = "px"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0072
            r1 = 0
            goto L_0x0073
        L_0x005e:
            java.lang.String r3 = "em"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0072
            r1 = r5
            goto L_0x0073
        L_0x0068:
            java.lang.String r3 = "%"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0072
            r1 = r6
            goto L_0x0073
        L_0x0072:
            r1 = r2
        L_0x0073:
            if (r1 == 0) goto L_0x0088
            if (r1 == r5) goto L_0x0084
            if (r1 != r6) goto L_0x007e
            r6 = 3
            r7.setFontSizeUnit(r6)
            goto L_0x008b
        L_0x007e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            r6.<init>()
            throw r6
        L_0x0084:
            r7.setFontSizeUnit(r6)
            goto L_0x008b
        L_0x0088:
            r7.setFontSizeUnit(r5)
        L_0x008b:
            java.lang.String r6 = r0.group(r5)
            java.lang.Object r6 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r6)
            java.lang.String r6 = (java.lang.String) r6
            float r6 = java.lang.Float.parseFloat(r6)
            r7.setFontSize(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCssParser.parseFontSize(java.lang.String, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle):void");
    }

    private void applySelectorToStyle(WebvttCssStyle webvttCssStyle, String str) {
        if (!"".equals(str)) {
            int indexOf = str.indexOf(91);
            if (indexOf != -1) {
                Matcher matcher = VOICE_NAME_PATTERN.matcher(str.substring(indexOf));
                if (matcher.matches()) {
                    webvttCssStyle.setTargetVoice((String) Assertions.checkNotNull(matcher.group(1)));
                }
                str = str.substring(0, indexOf);
            }
            String[] split = Util.split(str, "\\.");
            String str2 = split[0];
            int indexOf2 = str2.indexOf(35);
            if (indexOf2 != -1) {
                webvttCssStyle.setTargetTagName(str2.substring(0, indexOf2));
                webvttCssStyle.setTargetId(str2.substring(indexOf2 + 1));
            } else {
                webvttCssStyle.setTargetTagName(str2);
            }
            if (split.length > 1) {
                webvttCssStyle.setTargetClasses((String[]) Util.nullSafeArrayCopyOfRange(split, 1, split.length));
            }
        }
    }
}
