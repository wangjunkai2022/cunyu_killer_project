package com.opensource.svgaplayer.proto;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.List;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class FrameEntity extends Message<FrameEntity, Builder> {
    public static final ProtoAdapter<FrameEntity> ADAPTER = new ProtoAdapter_FrameEntity();
    public static final Float DEFAULT_ALPHA = Float.valueOf(0.0f);
    public static final String DEFAULT_CLIPPATH = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)
    public final Float alpha;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 4)
    public final String clipPath;
    @WireField(adapter = "com.opensource.svgaplayer.proto.Layout#ADAPTER", tag = 2)
    public final Layout layout;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity#ADAPTER", label = WireField.Label.REPEATED, tag = 5)
    public final List<ShapeEntity> shapes;
    @WireField(adapter = "com.opensource.svgaplayer.proto.Transform#ADAPTER", tag = 3)
    public final Transform transform;

    public FrameEntity(Float f, Layout layout, Transform transform, String str, List<ShapeEntity> list) {
        this(f, layout, transform, str, list, ByteString.EMPTY);
    }

    public FrameEntity(Float f, Layout layout, Transform transform, String str, List<ShapeEntity> list, ByteString byteString) {
        super(ADAPTER, byteString);
        this.alpha = f;
        this.layout = layout;
        this.transform = transform;
        this.clipPath = str;
        this.shapes = Internal.immutableCopyOf("shapes", list);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<FrameEntity, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.alpha = this.alpha;
        builder.layout = this.layout;
        builder.transform = this.transform;
        builder.clipPath = this.clipPath;
        builder.shapes = Internal.copyOf("shapes", this.shapes);
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FrameEntity)) {
            return false;
        }
        FrameEntity frameEntity = (FrameEntity) obj;
        return unknownFields().equals(frameEntity.unknownFields()) && Internal.equals(this.alpha, frameEntity.alpha) && Internal.equals(this.layout, frameEntity.layout) && Internal.equals(this.transform, frameEntity.transform) && Internal.equals(this.clipPath, frameEntity.clipPath) && this.shapes.equals(frameEntity.shapes);
    }

    @Override // java.lang.Object
    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = unknownFields().hashCode() * 37;
        Float f = this.alpha;
        int i2 = 0;
        int hashCode2 = (hashCode + (f != null ? f.hashCode() : 0)) * 37;
        Layout layout = this.layout;
        int hashCode3 = (hashCode2 + (layout != null ? layout.hashCode() : 0)) * 37;
        Transform transform = this.transform;
        int hashCode4 = (hashCode3 + (transform != null ? transform.hashCode() : 0)) * 37;
        String str = this.clipPath;
        if (str != null) {
            i2 = str.hashCode();
        }
        int hashCode5 = ((hashCode4 + i2) * 37) + this.shapes.hashCode();
        this.hashCode = hashCode5;
        return hashCode5;
    }

    @Override // com.squareup.wire.Message, java.lang.Object
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.alpha != null) {
            sb.append(", alpha=");
            sb.append(this.alpha);
        }
        if (this.layout != null) {
            sb.append(", layout=");
            sb.append(this.layout);
        }
        if (this.transform != null) {
            sb.append(", transform=");
            sb.append(this.transform);
        }
        if (this.clipPath != null) {
            sb.append(", clipPath=");
            sb.append(this.clipPath);
        }
        if (!this.shapes.isEmpty()) {
            sb.append(", shapes=");
            sb.append(this.shapes);
        }
        StringBuilder replace = sb.replace(0, 2, "FrameEntity{");
        replace.append('}');
        return replace.toString();
    }

    /* loaded from: classes2.dex */
    public static final class Builder extends Message.Builder<FrameEntity, Builder> {
        public Float alpha;
        public String clipPath;
        public Layout layout;
        public List<ShapeEntity> shapes = Internal.newMutableList();
        public Transform transform;

        public Builder alpha(Float f) {
            this.alpha = f;
            return this;
        }

        public Builder layout(Layout layout) {
            this.layout = layout;
            return this;
        }

        public Builder transform(Transform transform) {
            this.transform = transform;
            return this;
        }

        public Builder clipPath(String str) {
            this.clipPath = str;
            return this;
        }

        public Builder shapes(List<ShapeEntity> list) {
            Internal.checkElementsNotNull(list);
            this.shapes = list;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public FrameEntity build() {
            return new FrameEntity(this.alpha, this.layout, this.transform, this.clipPath, this.shapes, super.buildUnknownFields());
        }
    }

    /* loaded from: classes2.dex */
    private static final class ProtoAdapter_FrameEntity extends ProtoAdapter<FrameEntity> {
        ProtoAdapter_FrameEntity() {
            super(FieldEncoding.LENGTH_DELIMITED, FrameEntity.class);
        }

        public int encodedSize(FrameEntity frameEntity) {
            int i = 0;
            int encodedSizeWithTag = (frameEntity.alpha != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, frameEntity.alpha) : 0) + (frameEntity.layout != null ? Layout.ADAPTER.encodedSizeWithTag(2, frameEntity.layout) : 0) + (frameEntity.transform != null ? Transform.ADAPTER.encodedSizeWithTag(3, frameEntity.transform) : 0);
            if (frameEntity.clipPath != null) {
                i = ProtoAdapter.STRING.encodedSizeWithTag(4, frameEntity.clipPath);
            }
            return encodedSizeWithTag + i + ShapeEntity.ADAPTER.asRepeated().encodedSizeWithTag(5, frameEntity.shapes) + frameEntity.unknownFields().size();
        }

        public void encode(ProtoWriter protoWriter, FrameEntity frameEntity) throws IOException {
            if (frameEntity.alpha != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, frameEntity.alpha);
            }
            if (frameEntity.layout != null) {
                Layout.ADAPTER.encodeWithTag(protoWriter, 2, frameEntity.layout);
            }
            if (frameEntity.transform != null) {
                Transform.ADAPTER.encodeWithTag(protoWriter, 3, frameEntity.transform);
            }
            if (frameEntity.clipPath != null) {
                ProtoAdapter.STRING.encodeWithTag(protoWriter, 4, frameEntity.clipPath);
            }
            ShapeEntity.ADAPTER.asRepeated().encodeWithTag(protoWriter, 5, frameEntity.shapes);
            protoWriter.writeBytes(frameEntity.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public FrameEntity decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.alpha(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.layout(Layout.ADAPTER.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.transform(Transform.ADAPTER.decode(protoReader));
                } else if (nextTag == 4) {
                    builder.clipPath(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag != 5) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.shapes.add(ShapeEntity.ADAPTER.decode(protoReader));
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.opensource.svgaplayer.proto.FrameEntity$Builder] */
        /* JADX WARN: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump */
        public com.opensource.svgaplayer.proto.FrameEntity redact(com.opensource.svgaplayer.proto.FrameEntity r3) {
            /*
                r2 = this;
                com.opensource.svgaplayer.proto.FrameEntity$Builder r3 = r3.newBuilder2()
                com.opensource.svgaplayer.proto.Layout r0 = r3.layout
                if (r0 == 0) goto L_0x0014
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.Layout> r0 = com.opensource.svgaplayer.proto.Layout.ADAPTER
                com.opensource.svgaplayer.proto.Layout r1 = r3.layout
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.Layout r0 = (com.opensource.svgaplayer.proto.Layout) r0
                r3.layout = r0
            L_0x0014:
                com.opensource.svgaplayer.proto.Transform r0 = r3.transform
                if (r0 == 0) goto L_0x0024
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.Transform> r0 = com.opensource.svgaplayer.proto.Transform.ADAPTER
                com.opensource.svgaplayer.proto.Transform r1 = r3.transform
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.Transform r0 = (com.opensource.svgaplayer.proto.Transform) r0
                r3.transform = r0
            L_0x0024:
                java.util.List<com.opensource.svgaplayer.proto.ShapeEntity> r0 = r3.shapes
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity> r1 = com.opensource.svgaplayer.proto.ShapeEntity.ADAPTER
                com.squareup.wire.internal.Internal.redactElements(r0, r1)
                r3.clearUnknownFields()
                com.opensource.svgaplayer.proto.FrameEntity r3 = r3.build()
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.FrameEntity.ProtoAdapter_FrameEntity.redact(com.opensource.svgaplayer.proto.FrameEntity):com.opensource.svgaplayer.proto.FrameEntity");
        }
    }
}
