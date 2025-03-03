package com.google.android.exoplayer2.metadata.icy;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.common.base.Ascii;
import com.google.common.base.Charsets;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class IcyDecoder extends SimpleMetadataDecoder {
    private static final Pattern METADATA_ELEMENT = Pattern.compile("(.+?)='(.*?)';", 32);
    private static final String STREAM_KEY_NAME = "streamtitle";
    private static final String STREAM_KEY_URL = "streamurl";
    private final CharsetDecoder utf8Decoder = Charsets.UTF_8.newDecoder();
    private final CharsetDecoder iso88591Decoder = Charsets.ISO_8859_1.newDecoder();

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    protected Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        String decodeToString = decodeToString(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (decodeToString == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = METADATA_ELEMENT.matcher(decodeToString);
        String str = null;
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String lowerCase = Ascii.toLowerCase(group);
                char c = 65535;
                int hashCode = lowerCase.hashCode();
                if (hashCode != -315603473) {
                    if (hashCode == 1646559960 && lowerCase.equals(STREAM_KEY_NAME)) {
                        c = 0;
                    }
                } else if (lowerCase.equals(STREAM_KEY_URL)) {
                    c = 1;
                }
                if (c == 0) {
                    str = group2;
                } else if (c == 1) {
                    str2 = group2;
                }
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }

    private String decodeToString(ByteBuffer byteBuffer) {
        try {
            return this.utf8Decoder.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                return this.iso88591Decoder.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.iso88591Decoder.reset();
                byteBuffer.rewind();
            }
        } finally {
            this.utf8Decoder.reset();
            byteBuffer.rewind();
        }
    }
}
