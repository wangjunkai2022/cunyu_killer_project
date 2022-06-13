package com.opensource.svgaplayer.proto;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class ShapeEntity extends Message<ShapeEntity, Builder> {
    public static final ProtoAdapter<ShapeEntity> ADAPTER = new ProtoAdapter_ShapeEntity();
    public static final ShapeType DEFAULT_TYPE = ShapeType.SHAPE;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs#ADAPTER", tag = 4)
    public final EllipseArgs ellipse;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$RectArgs#ADAPTER", tag = 3)
    public final RectArgs rect;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs#ADAPTER", tag = 2)
    public final ShapeArgs shape;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle#ADAPTER", tag = 10)
    public final ShapeStyle styles;
    @WireField(adapter = "com.opensource.svgaplayer.proto.Transform#ADAPTER", tag = 11)
    public final Transform transform;
    @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeType#ADAPTER", tag = 1)
    public final ShapeType type;

    public ShapeEntity(ShapeType shapeType, ShapeStyle shapeStyle, Transform transform, ShapeArgs shapeArgs, RectArgs rectArgs, EllipseArgs ellipseArgs) {
        this(shapeType, shapeStyle, transform, shapeArgs, rectArgs, ellipseArgs, ByteString.EMPTY);
    }

    public ShapeEntity(ShapeType shapeType, ShapeStyle shapeStyle, Transform transform, ShapeArgs shapeArgs, RectArgs rectArgs, EllipseArgs ellipseArgs, ByteString byteString) {
        super(ADAPTER, byteString);
        if (Internal.countNonNull(shapeArgs, rectArgs, ellipseArgs) <= 1) {
            this.type = shapeType;
            this.styles = shapeStyle;
            this.transform = transform;
            this.shape = shapeArgs;
            this.rect = rectArgs;
            this.ellipse = ellipseArgs;
            return;
        }
        throw new IllegalArgumentException("at most one of shape, rect, ellipse may be non-null");
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<ShapeEntity, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.styles = this.styles;
        builder.transform = this.transform;
        builder.shape = this.shape;
        builder.rect = this.rect;
        builder.ellipse = this.ellipse;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ShapeEntity)) {
            return false;
        }
        ShapeEntity shapeEntity = (ShapeEntity) obj;
        return unknownFields().equals(shapeEntity.unknownFields()) && Internal.equals(this.type, shapeEntity.type) && Internal.equals(this.styles, shapeEntity.styles) && Internal.equals(this.transform, shapeEntity.transform) && Internal.equals(this.shape, shapeEntity.shape) && Internal.equals(this.rect, shapeEntity.rect) && Internal.equals(this.ellipse, shapeEntity.ellipse);
    }

    @Override // java.lang.Object
    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = unknownFields().hashCode() * 37;
        ShapeType shapeType = this.type;
        int i2 = 0;
        int hashCode2 = (hashCode + (shapeType != null ? shapeType.hashCode() : 0)) * 37;
        ShapeStyle shapeStyle = this.styles;
        int hashCode3 = (hashCode2 + (shapeStyle != null ? shapeStyle.hashCode() : 0)) * 37;
        Transform transform = this.transform;
        int hashCode4 = (hashCode3 + (transform != null ? transform.hashCode() : 0)) * 37;
        ShapeArgs shapeArgs = this.shape;
        int hashCode5 = (hashCode4 + (shapeArgs != null ? shapeArgs.hashCode() : 0)) * 37;
        RectArgs rectArgs = this.rect;
        int hashCode6 = (hashCode5 + (rectArgs != null ? rectArgs.hashCode() : 0)) * 37;
        EllipseArgs ellipseArgs = this.ellipse;
        if (ellipseArgs != null) {
            i2 = ellipseArgs.hashCode();
        }
        int i3 = hashCode6 + i2;
        this.hashCode = i3;
        return i3;
    }

    @Override // com.squareup.wire.Message, java.lang.Object
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.type != null) {
            sb.append(", type=");
            sb.append(this.type);
        }
        if (this.styles != null) {
            sb.append(", styles=");
            sb.append(this.styles);
        }
        if (this.transform != null) {
            sb.append(", transform=");
            sb.append(this.transform);
        }
        if (this.shape != null) {
            sb.append(", shape=");
            sb.append(this.shape);
        }
        if (this.rect != null) {
            sb.append(", rect=");
            sb.append(this.rect);
        }
        if (this.ellipse != null) {
            sb.append(", ellipse=");
            sb.append(this.ellipse);
        }
        StringBuilder replace = sb.replace(0, 2, "ShapeEntity{");
        replace.append('}');
        return replace.toString();
    }

    /* loaded from: classes2.dex */
    public static final class Builder extends Message.Builder<ShapeEntity, Builder> {
        public EllipseArgs ellipse;
        public RectArgs rect;
        public ShapeArgs shape;
        public ShapeStyle styles;
        public Transform transform;
        public ShapeType type;

        public Builder type(ShapeType shapeType) {
            this.type = shapeType;
            return this;
        }

        public Builder styles(ShapeStyle shapeStyle) {
            this.styles = shapeStyle;
            return this;
        }

        public Builder transform(Transform transform) {
            this.transform = transform;
            return this;
        }

        public Builder shape(ShapeArgs shapeArgs) {
            this.shape = shapeArgs;
            this.rect = null;
            this.ellipse = null;
            return this;
        }

        public Builder rect(RectArgs rectArgs) {
            this.rect = rectArgs;
            this.shape = null;
            this.ellipse = null;
            return this;
        }

        public Builder ellipse(EllipseArgs ellipseArgs) {
            this.ellipse = ellipseArgs;
            this.shape = null;
            this.rect = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ShapeEntity build() {
            return new ShapeEntity(this.type, this.styles, this.transform, this.shape, this.rect, this.ellipse, super.buildUnknownFields());
        }
    }

    /* loaded from: classes2.dex */
    public enum ShapeType implements WireEnum {
        SHAPE(0),
        RECT(1),
        ELLIPSE(2),
        KEEP(3);
        
        public static final ProtoAdapter<ShapeType> ADAPTER = ProtoAdapter.newEnumAdapter(ShapeType.class);
        private final int value;

        ShapeType(int i) {
            this.value = i;
        }

        public static ShapeType fromValue(int i) {
            if (i == 0) {
                return SHAPE;
            }
            if (i == 1) {
                return RECT;
            }
            if (i == 2) {
                return ELLIPSE;
            }
            if (i != 3) {
                return null;
            }
            return KEEP;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ShapeArgs extends Message<ShapeArgs, Builder> {
        public static final ProtoAdapter<ShapeArgs> ADAPTER = new ProtoAdapter_ShapeArgs();
        public static final String DEFAULT_D = "";
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
        public final String d;

        public ShapeArgs(String str) {
            this(str, ByteString.EMPTY);
        }

        public ShapeArgs(String str, ByteString byteString) {
            super(ADAPTER, byteString);
            this.d = str;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<ShapeArgs, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.d = this.d;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ShapeArgs)) {
                return false;
            }
            ShapeArgs shapeArgs = (ShapeArgs) obj;
            return unknownFields().equals(shapeArgs.unknownFields()) && Internal.equals(this.d, shapeArgs.d);
        }

        @Override // java.lang.Object
        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = unknownFields().hashCode() * 37;
            String str = this.d;
            int hashCode2 = hashCode + (str != null ? str.hashCode() : 0);
            this.hashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.squareup.wire.Message, java.lang.Object
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.d != null) {
                sb.append(", d=");
                sb.append(this.d);
            }
            StringBuilder replace = sb.replace(0, 2, "ShapeArgs{");
            replace.append('}');
            return replace.toString();
        }

        /* loaded from: classes2.dex */
        public static final class Builder extends Message.Builder<ShapeArgs, Builder> {
            public String d;

            public Builder d(String str) {
                this.d = str;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ShapeArgs build() {
                return new ShapeArgs(this.d, super.buildUnknownFields());
            }
        }

        /* loaded from: classes2.dex */
        private static final class ProtoAdapter_ShapeArgs extends ProtoAdapter<ShapeArgs> {
            ProtoAdapter_ShapeArgs() {
                super(FieldEncoding.LENGTH_DELIMITED, ShapeArgs.class);
            }

            public int encodedSize(ShapeArgs shapeArgs) {
                return (shapeArgs.d != null ? ProtoAdapter.STRING.encodedSizeWithTag(1, shapeArgs.d) : 0) + shapeArgs.unknownFields().size();
            }

            public void encode(ProtoWriter protoWriter, ShapeArgs shapeArgs) throws IOException {
                if (shapeArgs.d != null) {
                    ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, shapeArgs.d);
                }
                protoWriter.writeBytes(shapeArgs.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ShapeArgs decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag == -1) {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    } else if (nextTag != 1) {
                        FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                    } else {
                        builder.d(ProtoAdapter.STRING.decode(protoReader));
                    }
                }
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs$Builder] */
            /* JADX WARN: Unknown variable types count: 1 */
            /* Code decompiled incorrectly, please refer to instructions dump */
            public com.opensource.svgaplayer.proto.ShapeEntity.ShapeArgs redact(com.opensource.svgaplayer.proto.ShapeEntity.ShapeArgs r1) {
                /*
                    r0 = this;
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs$Builder r1 = r1.newBuilder2()
                    r1.clearUnknownFields()
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs r1 = r1.build()
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.ShapeEntity.ShapeArgs.ProtoAdapter_ShapeArgs.redact(com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs):com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class RectArgs extends Message<RectArgs, Builder> {
        public static final ProtoAdapter<RectArgs> ADAPTER = new ProtoAdapter_RectArgs();
        public static final Float DEFAULT_CORNERRADIUS;
        public static final Float DEFAULT_HEIGHT;
        public static final Float DEFAULT_WIDTH;
        public static final Float DEFAULT_X;
        public static final Float DEFAULT_Y;
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 5)
        public final Float cornerRadius;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
        public final Float height;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
        public final Float width;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)
        public final Float x;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)
        public final Float y;

        static {
            Float valueOf = Float.valueOf(0.0f);
            DEFAULT_X = valueOf;
            DEFAULT_Y = valueOf;
            DEFAULT_WIDTH = valueOf;
            DEFAULT_HEIGHT = valueOf;
            DEFAULT_CORNERRADIUS = valueOf;
        }

        public RectArgs(Float f, Float f2, Float f3, Float f4, Float f5) {
            this(f, f2, f3, f4, f5, ByteString.EMPTY);
        }

        public RectArgs(Float f, Float f2, Float f3, Float f4, Float f5, ByteString byteString) {
            super(ADAPTER, byteString);
            this.x = f;
            this.y = f2;
            this.width = f3;
            this.height = f4;
            this.cornerRadius = f5;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<RectArgs, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.x = this.x;
            builder.y = this.y;
            builder.width = this.width;
            builder.height = this.height;
            builder.cornerRadius = this.cornerRadius;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RectArgs)) {
                return false;
            }
            RectArgs rectArgs = (RectArgs) obj;
            return unknownFields().equals(rectArgs.unknownFields()) && Internal.equals(this.x, rectArgs.x) && Internal.equals(this.y, rectArgs.y) && Internal.equals(this.width, rectArgs.width) && Internal.equals(this.height, rectArgs.height) && Internal.equals(this.cornerRadius, rectArgs.cornerRadius);
        }

        @Override // java.lang.Object
        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = unknownFields().hashCode() * 37;
            Float f = this.x;
            int i2 = 0;
            int hashCode2 = (hashCode + (f != null ? f.hashCode() : 0)) * 37;
            Float f2 = this.y;
            int hashCode3 = (hashCode2 + (f2 != null ? f2.hashCode() : 0)) * 37;
            Float f3 = this.width;
            int hashCode4 = (hashCode3 + (f3 != null ? f3.hashCode() : 0)) * 37;
            Float f4 = this.height;
            int hashCode5 = (hashCode4 + (f4 != null ? f4.hashCode() : 0)) * 37;
            Float f5 = this.cornerRadius;
            if (f5 != null) {
                i2 = f5.hashCode();
            }
            int i3 = hashCode5 + i2;
            this.hashCode = i3;
            return i3;
        }

        @Override // com.squareup.wire.Message, java.lang.Object
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.x != null) {
                sb.append(", x=");
                sb.append(this.x);
            }
            if (this.y != null) {
                sb.append(", y=");
                sb.append(this.y);
            }
            if (this.width != null) {
                sb.append(", width=");
                sb.append(this.width);
            }
            if (this.height != null) {
                sb.append(", height=");
                sb.append(this.height);
            }
            if (this.cornerRadius != null) {
                sb.append(", cornerRadius=");
                sb.append(this.cornerRadius);
            }
            StringBuilder replace = sb.replace(0, 2, "RectArgs{");
            replace.append('}');
            return replace.toString();
        }

        /* loaded from: classes2.dex */
        public static final class Builder extends Message.Builder<RectArgs, Builder> {
            public Float cornerRadius;
            public Float height;
            public Float width;
            public Float x;
            public Float y;

            public Builder x(Float f) {
                this.x = f;
                return this;
            }

            public Builder y(Float f) {
                this.y = f;
                return this;
            }

            public Builder width(Float f) {
                this.width = f;
                return this;
            }

            public Builder height(Float f) {
                this.height = f;
                return this;
            }

            public Builder cornerRadius(Float f) {
                this.cornerRadius = f;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RectArgs build() {
                return new RectArgs(this.x, this.y, this.width, this.height, this.cornerRadius, super.buildUnknownFields());
            }
        }

        /* loaded from: classes2.dex */
        private static final class ProtoAdapter_RectArgs extends ProtoAdapter<RectArgs> {
            ProtoAdapter_RectArgs() {
                super(FieldEncoding.LENGTH_DELIMITED, RectArgs.class);
            }

            public int encodedSize(RectArgs rectArgs) {
                int i = 0;
                int encodedSizeWithTag = (rectArgs.x != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, rectArgs.x) : 0) + (rectArgs.y != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, rectArgs.y) : 0) + (rectArgs.width != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, rectArgs.width) : 0) + (rectArgs.height != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, rectArgs.height) : 0);
                if (rectArgs.cornerRadius != null) {
                    i = ProtoAdapter.FLOAT.encodedSizeWithTag(5, rectArgs.cornerRadius);
                }
                return encodedSizeWithTag + i + rectArgs.unknownFields().size();
            }

            public void encode(ProtoWriter protoWriter, RectArgs rectArgs) throws IOException {
                if (rectArgs.x != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, rectArgs.x);
                }
                if (rectArgs.y != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, rectArgs.y);
                }
                if (rectArgs.width != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, rectArgs.width);
                }
                if (rectArgs.height != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, rectArgs.height);
                }
                if (rectArgs.cornerRadius != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 5, rectArgs.cornerRadius);
                }
                protoWriter.writeBytes(rectArgs.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RectArgs decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag == -1) {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    } else if (nextTag == 1) {
                        builder.x(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 2) {
                        builder.y(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 3) {
                        builder.width(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 4) {
                        builder.height(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag != 5) {
                        FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                    } else {
                        builder.cornerRadius(ProtoAdapter.FLOAT.decode(protoReader));
                    }
                }
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$RectArgs$Builder] */
            /* JADX WARN: Unknown variable types count: 1 */
            /* Code decompiled incorrectly, please refer to instructions dump */
            public com.opensource.svgaplayer.proto.ShapeEntity.RectArgs redact(com.opensource.svgaplayer.proto.ShapeEntity.RectArgs r1) {
                /*
                    r0 = this;
                    com.opensource.svgaplayer.proto.ShapeEntity$RectArgs$Builder r1 = r1.newBuilder2()
                    r1.clearUnknownFields()
                    com.opensource.svgaplayer.proto.ShapeEntity$RectArgs r1 = r1.build()
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.ShapeEntity.RectArgs.ProtoAdapter_RectArgs.redact(com.opensource.svgaplayer.proto.ShapeEntity$RectArgs):com.opensource.svgaplayer.proto.ShapeEntity$RectArgs");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class EllipseArgs extends Message<EllipseArgs, Builder> {
        public static final ProtoAdapter<EllipseArgs> ADAPTER = new ProtoAdapter_EllipseArgs();
        public static final Float DEFAULT_RADIUSX;
        public static final Float DEFAULT_RADIUSY;
        public static final Float DEFAULT_X;
        public static final Float DEFAULT_Y;
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
        public final Float radiusX;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
        public final Float radiusY;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)
        public final Float x;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)
        public final Float y;

        static {
            Float valueOf = Float.valueOf(0.0f);
            DEFAULT_X = valueOf;
            DEFAULT_Y = valueOf;
            DEFAULT_RADIUSX = valueOf;
            DEFAULT_RADIUSY = valueOf;
        }

        public EllipseArgs(Float f, Float f2, Float f3, Float f4) {
            this(f, f2, f3, f4, ByteString.EMPTY);
        }

        public EllipseArgs(Float f, Float f2, Float f3, Float f4, ByteString byteString) {
            super(ADAPTER, byteString);
            this.x = f;
            this.y = f2;
            this.radiusX = f3;
            this.radiusY = f4;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<EllipseArgs, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.x = this.x;
            builder.y = this.y;
            builder.radiusX = this.radiusX;
            builder.radiusY = this.radiusY;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EllipseArgs)) {
                return false;
            }
            EllipseArgs ellipseArgs = (EllipseArgs) obj;
            return unknownFields().equals(ellipseArgs.unknownFields()) && Internal.equals(this.x, ellipseArgs.x) && Internal.equals(this.y, ellipseArgs.y) && Internal.equals(this.radiusX, ellipseArgs.radiusX) && Internal.equals(this.radiusY, ellipseArgs.radiusY);
        }

        @Override // java.lang.Object
        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = unknownFields().hashCode() * 37;
            Float f = this.x;
            int i2 = 0;
            int hashCode2 = (hashCode + (f != null ? f.hashCode() : 0)) * 37;
            Float f2 = this.y;
            int hashCode3 = (hashCode2 + (f2 != null ? f2.hashCode() : 0)) * 37;
            Float f3 = this.radiusX;
            int hashCode4 = (hashCode3 + (f3 != null ? f3.hashCode() : 0)) * 37;
            Float f4 = this.radiusY;
            if (f4 != null) {
                i2 = f4.hashCode();
            }
            int i3 = hashCode4 + i2;
            this.hashCode = i3;
            return i3;
        }

        @Override // com.squareup.wire.Message, java.lang.Object
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.x != null) {
                sb.append(", x=");
                sb.append(this.x);
            }
            if (this.y != null) {
                sb.append(", y=");
                sb.append(this.y);
            }
            if (this.radiusX != null) {
                sb.append(", radiusX=");
                sb.append(this.radiusX);
            }
            if (this.radiusY != null) {
                sb.append(", radiusY=");
                sb.append(this.radiusY);
            }
            StringBuilder replace = sb.replace(0, 2, "EllipseArgs{");
            replace.append('}');
            return replace.toString();
        }

        /* loaded from: classes2.dex */
        public static final class Builder extends Message.Builder<EllipseArgs, Builder> {
            public Float radiusX;
            public Float radiusY;
            public Float x;
            public Float y;

            public Builder x(Float f) {
                this.x = f;
                return this;
            }

            public Builder y(Float f) {
                this.y = f;
                return this;
            }

            public Builder radiusX(Float f) {
                this.radiusX = f;
                return this;
            }

            public Builder radiusY(Float f) {
                this.radiusY = f;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public EllipseArgs build() {
                return new EllipseArgs(this.x, this.y, this.radiusX, this.radiusY, super.buildUnknownFields());
            }
        }

        /* loaded from: classes2.dex */
        private static final class ProtoAdapter_EllipseArgs extends ProtoAdapter<EllipseArgs> {
            ProtoAdapter_EllipseArgs() {
                super(FieldEncoding.LENGTH_DELIMITED, EllipseArgs.class);
            }

            public int encodedSize(EllipseArgs ellipseArgs) {
                int i = 0;
                int encodedSizeWithTag = (ellipseArgs.x != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, ellipseArgs.x) : 0) + (ellipseArgs.y != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, ellipseArgs.y) : 0) + (ellipseArgs.radiusX != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, ellipseArgs.radiusX) : 0);
                if (ellipseArgs.radiusY != null) {
                    i = ProtoAdapter.FLOAT.encodedSizeWithTag(4, ellipseArgs.radiusY);
                }
                return encodedSizeWithTag + i + ellipseArgs.unknownFields().size();
            }

            public void encode(ProtoWriter protoWriter, EllipseArgs ellipseArgs) throws IOException {
                if (ellipseArgs.x != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, ellipseArgs.x);
                }
                if (ellipseArgs.y != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, ellipseArgs.y);
                }
                if (ellipseArgs.radiusX != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, ellipseArgs.radiusX);
                }
                if (ellipseArgs.radiusY != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, ellipseArgs.radiusY);
                }
                protoWriter.writeBytes(ellipseArgs.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EllipseArgs decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag == -1) {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    } else if (nextTag == 1) {
                        builder.x(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 2) {
                        builder.y(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag == 3) {
                        builder.radiusX(ProtoAdapter.FLOAT.decode(protoReader));
                    } else if (nextTag != 4) {
                        FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                    } else {
                        builder.radiusY(ProtoAdapter.FLOAT.decode(protoReader));
                    }
                }
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs$Builder] */
            /* JADX WARN: Unknown variable types count: 1 */
            /* Code decompiled incorrectly, please refer to instructions dump */
            public com.opensource.svgaplayer.proto.ShapeEntity.EllipseArgs redact(com.opensource.svgaplayer.proto.ShapeEntity.EllipseArgs r1) {
                /*
                    r0 = this;
                    com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs$Builder r1 = r1.newBuilder2()
                    r1.clearUnknownFields()
                    com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs r1 = r1.build()
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.ShapeEntity.EllipseArgs.ProtoAdapter_EllipseArgs.redact(com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs):com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class ShapeStyle extends Message<ShapeStyle, Builder> {
        public static final Float DEFAULT_LINEDASHI;
        public static final Float DEFAULT_LINEDASHII;
        public static final Float DEFAULT_LINEDASHIII;
        public static final Float DEFAULT_MITERLIMIT;
        public static final Float DEFAULT_STROKEWIDTH;
        private static final long serialVersionUID = 0;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor#ADAPTER", tag = 1)
        public final RGBAColor fill;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$LineCap#ADAPTER", tag = 4)
        public final LineCap lineCap;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 7)
        public final Float lineDashI;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 8)
        public final Float lineDashII;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 9)
        public final Float lineDashIII;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$LineJoin#ADAPTER", tag = 5)
        public final LineJoin lineJoin;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 6)
        public final Float miterLimit;
        @WireField(adapter = "com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor#ADAPTER", tag = 2)
        public final RGBAColor stroke;
        @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
        public final Float strokeWidth;
        public static final ProtoAdapter<ShapeStyle> ADAPTER = new ProtoAdapter_ShapeStyle();
        public static final LineCap DEFAULT_LINECAP = LineCap.LineCap_BUTT;
        public static final LineJoin DEFAULT_LINEJOIN = LineJoin.LineJoin_MITER;

        static {
            Float valueOf = Float.valueOf(0.0f);
            DEFAULT_STROKEWIDTH = valueOf;
            DEFAULT_MITERLIMIT = valueOf;
            DEFAULT_LINEDASHI = valueOf;
            DEFAULT_LINEDASHII = valueOf;
            DEFAULT_LINEDASHIII = valueOf;
        }

        public ShapeStyle(RGBAColor rGBAColor, RGBAColor rGBAColor2, Float f, LineCap lineCap, LineJoin lineJoin, Float f2, Float f3, Float f4, Float f5) {
            this(rGBAColor, rGBAColor2, f, lineCap, lineJoin, f2, f3, f4, f5, ByteString.EMPTY);
        }

        public ShapeStyle(RGBAColor rGBAColor, RGBAColor rGBAColor2, Float f, LineCap lineCap, LineJoin lineJoin, Float f2, Float f3, Float f4, Float f5, ByteString byteString) {
            super(ADAPTER, byteString);
            this.fill = rGBAColor;
            this.stroke = rGBAColor2;
            this.strokeWidth = f;
            this.lineCap = lineCap;
            this.lineJoin = lineJoin;
            this.miterLimit = f2;
            this.lineDashI = f3;
            this.lineDashII = f4;
            this.lineDashIII = f5;
        }

        @Override // com.squareup.wire.Message
        /* renamed from: newBuilder */
        public Message.Builder<ShapeStyle, Builder> newBuilder2() {
            Builder builder = new Builder();
            builder.fill = this.fill;
            builder.stroke = this.stroke;
            builder.strokeWidth = this.strokeWidth;
            builder.lineCap = this.lineCap;
            builder.lineJoin = this.lineJoin;
            builder.miterLimit = this.miterLimit;
            builder.lineDashI = this.lineDashI;
            builder.lineDashII = this.lineDashII;
            builder.lineDashIII = this.lineDashIII;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ShapeStyle)) {
                return false;
            }
            ShapeStyle shapeStyle = (ShapeStyle) obj;
            return unknownFields().equals(shapeStyle.unknownFields()) && Internal.equals(this.fill, shapeStyle.fill) && Internal.equals(this.stroke, shapeStyle.stroke) && Internal.equals(this.strokeWidth, shapeStyle.strokeWidth) && Internal.equals(this.lineCap, shapeStyle.lineCap) && Internal.equals(this.lineJoin, shapeStyle.lineJoin) && Internal.equals(this.miterLimit, shapeStyle.miterLimit) && Internal.equals(this.lineDashI, shapeStyle.lineDashI) && Internal.equals(this.lineDashII, shapeStyle.lineDashII) && Internal.equals(this.lineDashIII, shapeStyle.lineDashIII);
        }

        @Override // java.lang.Object
        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int hashCode = unknownFields().hashCode() * 37;
            RGBAColor rGBAColor = this.fill;
            int i2 = 0;
            int hashCode2 = (hashCode + (rGBAColor != null ? rGBAColor.hashCode() : 0)) * 37;
            RGBAColor rGBAColor2 = this.stroke;
            int hashCode3 = (hashCode2 + (rGBAColor2 != null ? rGBAColor2.hashCode() : 0)) * 37;
            Float f = this.strokeWidth;
            int hashCode4 = (hashCode3 + (f != null ? f.hashCode() : 0)) * 37;
            LineCap lineCap = this.lineCap;
            int hashCode5 = (hashCode4 + (lineCap != null ? lineCap.hashCode() : 0)) * 37;
            LineJoin lineJoin = this.lineJoin;
            int hashCode6 = (hashCode5 + (lineJoin != null ? lineJoin.hashCode() : 0)) * 37;
            Float f2 = this.miterLimit;
            int hashCode7 = (hashCode6 + (f2 != null ? f2.hashCode() : 0)) * 37;
            Float f3 = this.lineDashI;
            int hashCode8 = (hashCode7 + (f3 != null ? f3.hashCode() : 0)) * 37;
            Float f4 = this.lineDashII;
            int hashCode9 = (hashCode8 + (f4 != null ? f4.hashCode() : 0)) * 37;
            Float f5 = this.lineDashIII;
            if (f5 != null) {
                i2 = f5.hashCode();
            }
            int i3 = hashCode9 + i2;
            this.hashCode = i3;
            return i3;
        }

        @Override // com.squareup.wire.Message, java.lang.Object
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.fill != null) {
                sb.append(", fill=");
                sb.append(this.fill);
            }
            if (this.stroke != null) {
                sb.append(", stroke=");
                sb.append(this.stroke);
            }
            if (this.strokeWidth != null) {
                sb.append(", strokeWidth=");
                sb.append(this.strokeWidth);
            }
            if (this.lineCap != null) {
                sb.append(", lineCap=");
                sb.append(this.lineCap);
            }
            if (this.lineJoin != null) {
                sb.append(", lineJoin=");
                sb.append(this.lineJoin);
            }
            if (this.miterLimit != null) {
                sb.append(", miterLimit=");
                sb.append(this.miterLimit);
            }
            if (this.lineDashI != null) {
                sb.append(", lineDashI=");
                sb.append(this.lineDashI);
            }
            if (this.lineDashII != null) {
                sb.append(", lineDashII=");
                sb.append(this.lineDashII);
            }
            if (this.lineDashIII != null) {
                sb.append(", lineDashIII=");
                sb.append(this.lineDashIII);
            }
            StringBuilder replace = sb.replace(0, 2, "ShapeStyle{");
            replace.append('}');
            return replace.toString();
        }

        /* loaded from: classes2.dex */
        public static final class Builder extends Message.Builder<ShapeStyle, Builder> {
            public RGBAColor fill;
            public LineCap lineCap;
            public Float lineDashI;
            public Float lineDashII;
            public Float lineDashIII;
            public LineJoin lineJoin;
            public Float miterLimit;
            public RGBAColor stroke;
            public Float strokeWidth;

            public Builder fill(RGBAColor rGBAColor) {
                this.fill = rGBAColor;
                return this;
            }

            public Builder stroke(RGBAColor rGBAColor) {
                this.stroke = rGBAColor;
                return this;
            }

            public Builder strokeWidth(Float f) {
                this.strokeWidth = f;
                return this;
            }

            public Builder lineCap(LineCap lineCap) {
                this.lineCap = lineCap;
                return this;
            }

            public Builder lineJoin(LineJoin lineJoin) {
                this.lineJoin = lineJoin;
                return this;
            }

            public Builder miterLimit(Float f) {
                this.miterLimit = f;
                return this;
            }

            public Builder lineDashI(Float f) {
                this.lineDashI = f;
                return this;
            }

            public Builder lineDashII(Float f) {
                this.lineDashII = f;
                return this;
            }

            public Builder lineDashIII(Float f) {
                this.lineDashIII = f;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ShapeStyle build() {
                return new ShapeStyle(this.fill, this.stroke, this.strokeWidth, this.lineCap, this.lineJoin, this.miterLimit, this.lineDashI, this.lineDashII, this.lineDashIII, super.buildUnknownFields());
            }
        }

        /* loaded from: classes2.dex */
        public static final class RGBAColor extends Message<RGBAColor, Builder> {
            public static final ProtoAdapter<RGBAColor> ADAPTER = new ProtoAdapter_RGBAColor();
            public static final Float DEFAULT_A;
            public static final Float DEFAULT_B;
            public static final Float DEFAULT_G;
            public static final Float DEFAULT_R;
            private static final long serialVersionUID = 0;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
            public final Float a;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
            public final Float b;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)
            public final Float g;
            @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)
            public final Float r;

            static {
                Float valueOf = Float.valueOf(0.0f);
                DEFAULT_R = valueOf;
                DEFAULT_G = valueOf;
                DEFAULT_B = valueOf;
                DEFAULT_A = valueOf;
            }

            public RGBAColor(Float f, Float f2, Float f3, Float f4) {
                this(f, f2, f3, f4, ByteString.EMPTY);
            }

            public RGBAColor(Float f, Float f2, Float f3, Float f4, ByteString byteString) {
                super(ADAPTER, byteString);
                this.r = f;
                this.g = f2;
                this.b = f3;
                this.a = f4;
            }

            @Override // com.squareup.wire.Message
            /* renamed from: newBuilder */
            public Message.Builder<RGBAColor, Builder> newBuilder2() {
                Builder builder = new Builder();
                builder.r = this.r;
                builder.g = this.g;
                builder.b = this.b;
                builder.a = this.a;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            @Override // java.lang.Object
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof RGBAColor)) {
                    return false;
                }
                RGBAColor rGBAColor = (RGBAColor) obj;
                return unknownFields().equals(rGBAColor.unknownFields()) && Internal.equals(this.r, rGBAColor.r) && Internal.equals(this.g, rGBAColor.g) && Internal.equals(this.b, rGBAColor.b) && Internal.equals(this.a, rGBAColor.a);
            }

            @Override // java.lang.Object
            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int hashCode = unknownFields().hashCode() * 37;
                Float f = this.r;
                int i2 = 0;
                int hashCode2 = (hashCode + (f != null ? f.hashCode() : 0)) * 37;
                Float f2 = this.g;
                int hashCode3 = (hashCode2 + (f2 != null ? f2.hashCode() : 0)) * 37;
                Float f3 = this.b;
                int hashCode4 = (hashCode3 + (f3 != null ? f3.hashCode() : 0)) * 37;
                Float f4 = this.a;
                if (f4 != null) {
                    i2 = f4.hashCode();
                }
                int i3 = hashCode4 + i2;
                this.hashCode = i3;
                return i3;
            }

            @Override // com.squareup.wire.Message, java.lang.Object
            public String toString() {
                StringBuilder sb = new StringBuilder();
                if (this.r != null) {
                    sb.append(", r=");
                    sb.append(this.r);
                }
                if (this.g != null) {
                    sb.append(", g=");
                    sb.append(this.g);
                }
                if (this.b != null) {
                    sb.append(", b=");
                    sb.append(this.b);
                }
                if (this.a != null) {
                    sb.append(", a=");
                    sb.append(this.a);
                }
                StringBuilder replace = sb.replace(0, 2, "RGBAColor{");
                replace.append('}');
                return replace.toString();
            }

            /* loaded from: classes2.dex */
            public static final class Builder extends Message.Builder<RGBAColor, Builder> {
                public Float a;
                public Float b;
                public Float g;
                public Float r;

                public Builder r(Float f) {
                    this.r = f;
                    return this;
                }

                public Builder g(Float f) {
                    this.g = f;
                    return this;
                }

                public Builder b(Float f) {
                    this.b = f;
                    return this;
                }

                public Builder a(Float f) {
                    this.a = f;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public RGBAColor build() {
                    return new RGBAColor(this.r, this.g, this.b, this.a, super.buildUnknownFields());
                }
            }

            /* loaded from: classes2.dex */
            private static final class ProtoAdapter_RGBAColor extends ProtoAdapter<RGBAColor> {
                ProtoAdapter_RGBAColor() {
                    super(FieldEncoding.LENGTH_DELIMITED, RGBAColor.class);
                }

                public int encodedSize(RGBAColor rGBAColor) {
                    int i = 0;
                    int encodedSizeWithTag = (rGBAColor.r != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, rGBAColor.r) : 0) + (rGBAColor.g != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, rGBAColor.g) : 0) + (rGBAColor.b != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, rGBAColor.b) : 0);
                    if (rGBAColor.a != null) {
                        i = ProtoAdapter.FLOAT.encodedSizeWithTag(4, rGBAColor.a);
                    }
                    return encodedSizeWithTag + i + rGBAColor.unknownFields().size();
                }

                public void encode(ProtoWriter protoWriter, RGBAColor rGBAColor) throws IOException {
                    if (rGBAColor.r != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, rGBAColor.r);
                    }
                    if (rGBAColor.g != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, rGBAColor.g);
                    }
                    if (rGBAColor.b != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, rGBAColor.b);
                    }
                    if (rGBAColor.a != null) {
                        ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, rGBAColor.a);
                    }
                    protoWriter.writeBytes(rGBAColor.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public RGBAColor decode(ProtoReader protoReader) throws IOException {
                    Builder builder = new Builder();
                    long beginMessage = protoReader.beginMessage();
                    while (true) {
                        int nextTag = protoReader.nextTag();
                        if (nextTag == -1) {
                            protoReader.endMessage(beginMessage);
                            return builder.build();
                        } else if (nextTag == 1) {
                            builder.r(ProtoAdapter.FLOAT.decode(protoReader));
                        } else if (nextTag == 2) {
                            builder.g(ProtoAdapter.FLOAT.decode(protoReader));
                        } else if (nextTag == 3) {
                            builder.b(ProtoAdapter.FLOAT.decode(protoReader));
                        } else if (nextTag != 4) {
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                        } else {
                            builder.a(ProtoAdapter.FLOAT.decode(protoReader));
                        }
                    }
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor$Builder] */
                /* JADX WARN: Unknown variable types count: 1 */
                /* Code decompiled incorrectly, please refer to instructions dump */
                public com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor redact(com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor r1) {
                    /*
                        r0 = this;
                        com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor$Builder r1 = r1.newBuilder2()
                        r1.clearUnknownFields()
                        com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r1 = r1.build()
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor.ProtoAdapter_RGBAColor.redact(com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor):com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor");
                }
            }
        }

        /* loaded from: classes2.dex */
        public enum LineCap implements WireEnum {
            LineCap_BUTT(0),
            LineCap_ROUND(1),
            LineCap_SQUARE(2);
            
            public static final ProtoAdapter<LineCap> ADAPTER = ProtoAdapter.newEnumAdapter(LineCap.class);
            private final int value;

            LineCap(int i) {
                this.value = i;
            }

            public static LineCap fromValue(int i) {
                if (i == 0) {
                    return LineCap_BUTT;
                }
                if (i == 1) {
                    return LineCap_ROUND;
                }
                if (i != 2) {
                    return null;
                }
                return LineCap_SQUARE;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }
        }

        /* loaded from: classes2.dex */
        public enum LineJoin implements WireEnum {
            LineJoin_MITER(0),
            LineJoin_ROUND(1),
            LineJoin_BEVEL(2);
            
            public static final ProtoAdapter<LineJoin> ADAPTER = ProtoAdapter.newEnumAdapter(LineJoin.class);
            private final int value;

            LineJoin(int i) {
                this.value = i;
            }

            public static LineJoin fromValue(int i) {
                if (i == 0) {
                    return LineJoin_MITER;
                }
                if (i == 1) {
                    return LineJoin_ROUND;
                }
                if (i != 2) {
                    return null;
                }
                return LineJoin_BEVEL;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }
        }

        /* loaded from: classes2.dex */
        private static final class ProtoAdapter_ShapeStyle extends ProtoAdapter<ShapeStyle> {
            ProtoAdapter_ShapeStyle() {
                super(FieldEncoding.LENGTH_DELIMITED, ShapeStyle.class);
            }

            public int encodedSize(ShapeStyle shapeStyle) {
                int i = 0;
                int encodedSizeWithTag = (shapeStyle.fill != null ? RGBAColor.ADAPTER.encodedSizeWithTag(1, shapeStyle.fill) : 0) + (shapeStyle.stroke != null ? RGBAColor.ADAPTER.encodedSizeWithTag(2, shapeStyle.stroke) : 0) + (shapeStyle.strokeWidth != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, shapeStyle.strokeWidth) : 0) + (shapeStyle.lineCap != null ? LineCap.ADAPTER.encodedSizeWithTag(4, shapeStyle.lineCap) : 0) + (shapeStyle.lineJoin != null ? LineJoin.ADAPTER.encodedSizeWithTag(5, shapeStyle.lineJoin) : 0) + (shapeStyle.miterLimit != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(6, shapeStyle.miterLimit) : 0) + (shapeStyle.lineDashI != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(7, shapeStyle.lineDashI) : 0) + (shapeStyle.lineDashII != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(8, shapeStyle.lineDashII) : 0);
                if (shapeStyle.lineDashIII != null) {
                    i = ProtoAdapter.FLOAT.encodedSizeWithTag(9, shapeStyle.lineDashIII);
                }
                return encodedSizeWithTag + i + shapeStyle.unknownFields().size();
            }

            public void encode(ProtoWriter protoWriter, ShapeStyle shapeStyle) throws IOException {
                if (shapeStyle.fill != null) {
                    RGBAColor.ADAPTER.encodeWithTag(protoWriter, 1, shapeStyle.fill);
                }
                if (shapeStyle.stroke != null) {
                    RGBAColor.ADAPTER.encodeWithTag(protoWriter, 2, shapeStyle.stroke);
                }
                if (shapeStyle.strokeWidth != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, shapeStyle.strokeWidth);
                }
                if (shapeStyle.lineCap != null) {
                    LineCap.ADAPTER.encodeWithTag(protoWriter, 4, shapeStyle.lineCap);
                }
                if (shapeStyle.lineJoin != null) {
                    LineJoin.ADAPTER.encodeWithTag(protoWriter, 5, shapeStyle.lineJoin);
                }
                if (shapeStyle.miterLimit != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 6, shapeStyle.miterLimit);
                }
                if (shapeStyle.lineDashI != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 7, shapeStyle.lineDashI);
                }
                if (shapeStyle.lineDashII != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 8, shapeStyle.lineDashII);
                }
                if (shapeStyle.lineDashIII != null) {
                    ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 9, shapeStyle.lineDashIII);
                }
                protoWriter.writeBytes(shapeStyle.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ShapeStyle decode(ProtoReader protoReader) throws IOException {
                Builder builder = new Builder();
                long beginMessage = protoReader.beginMessage();
                while (true) {
                    int nextTag = protoReader.nextTag();
                    if (nextTag != -1) {
                        switch (nextTag) {
                            case 1:
                                builder.fill(RGBAColor.ADAPTER.decode(protoReader));
                                break;
                            case 2:
                                builder.stroke(RGBAColor.ADAPTER.decode(protoReader));
                                break;
                            case 3:
                                builder.strokeWidth(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 4:
                                try {
                                    builder.lineCap(LineCap.ADAPTER.decode(protoReader));
                                    break;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf((long) e.value));
                                    break;
                                }
                            case 5:
                                try {
                                    builder.lineJoin(LineJoin.ADAPTER.decode(protoReader));
                                    break;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf((long) e2.value));
                                    break;
                                }
                            case 6:
                                builder.miterLimit(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 7:
                                builder.lineDashI(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 8:
                                builder.lineDashII(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            case 9:
                                builder.lineDashIII(ProtoAdapter.FLOAT.decode(protoReader));
                                break;
                            default:
                                FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                                builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                                break;
                        }
                    } else {
                        protoReader.endMessage(beginMessage);
                        return builder.build();
                    }
                }
            }

            /* JADX WARN: Type inference failed for: r3v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$Builder] */
            /* JADX WARN: Unknown variable types count: 1 */
            /* Code decompiled incorrectly, please refer to instructions dump */
            public com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle redact(com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle r3) {
                /*
                    r2 = this;
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$Builder r3 = r3.newBuilder2()
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r0 = r3.fill
                    if (r0 == 0) goto L_0x0014
                    com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor> r0 = com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor.ADAPTER
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r1 = r3.fill
                    java.lang.Object r0 = r0.redact(r1)
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r0 = (com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor) r0
                    r3.fill = r0
                L_0x0014:
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r0 = r3.stroke
                    if (r0 == 0) goto L_0x0024
                    com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor> r0 = com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor.ADAPTER
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r1 = r3.stroke
                    java.lang.Object r0 = r0.redact(r1)
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle$RGBAColor r0 = (com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.RGBAColor) r0
                    r3.stroke = r0
                L_0x0024:
                    r3.clearUnknownFields()
                    com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle r3 = r3.build()
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.ProtoAdapter_ShapeStyle.redact(com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle):com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle");
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class ProtoAdapter_ShapeEntity extends ProtoAdapter<ShapeEntity> {
        ProtoAdapter_ShapeEntity() {
            super(FieldEncoding.LENGTH_DELIMITED, ShapeEntity.class);
        }

        public int encodedSize(ShapeEntity shapeEntity) {
            int i = 0;
            int encodedSizeWithTag = (shapeEntity.type != null ? ShapeType.ADAPTER.encodedSizeWithTag(1, shapeEntity.type) : 0) + (shapeEntity.styles != null ? ShapeStyle.ADAPTER.encodedSizeWithTag(10, shapeEntity.styles) : 0) + (shapeEntity.transform != null ? Transform.ADAPTER.encodedSizeWithTag(11, shapeEntity.transform) : 0) + (shapeEntity.shape != null ? ShapeArgs.ADAPTER.encodedSizeWithTag(2, shapeEntity.shape) : 0) + (shapeEntity.rect != null ? RectArgs.ADAPTER.encodedSizeWithTag(3, shapeEntity.rect) : 0);
            if (shapeEntity.ellipse != null) {
                i = EllipseArgs.ADAPTER.encodedSizeWithTag(4, shapeEntity.ellipse);
            }
            return encodedSizeWithTag + i + shapeEntity.unknownFields().size();
        }

        public void encode(ProtoWriter protoWriter, ShapeEntity shapeEntity) throws IOException {
            if (shapeEntity.type != null) {
                ShapeType.ADAPTER.encodeWithTag(protoWriter, 1, shapeEntity.type);
            }
            if (shapeEntity.styles != null) {
                ShapeStyle.ADAPTER.encodeWithTag(protoWriter, 10, shapeEntity.styles);
            }
            if (shapeEntity.transform != null) {
                Transform.ADAPTER.encodeWithTag(protoWriter, 11, shapeEntity.transform);
            }
            if (shapeEntity.shape != null) {
                ShapeArgs.ADAPTER.encodeWithTag(protoWriter, 2, shapeEntity.shape);
            }
            if (shapeEntity.rect != null) {
                RectArgs.ADAPTER.encodeWithTag(protoWriter, 3, shapeEntity.rect);
            }
            if (shapeEntity.ellipse != null) {
                EllipseArgs.ADAPTER.encodeWithTag(protoWriter, 4, shapeEntity.ellipse);
            }
            protoWriter.writeBytes(shapeEntity.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public ShapeEntity decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    try {
                        builder.type(ShapeType.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf((long) e.value));
                    }
                } else if (nextTag == 2) {
                    builder.shape(ShapeArgs.ADAPTER.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.rect(RectArgs.ADAPTER.decode(protoReader));
                } else if (nextTag == 4) {
                    builder.ellipse(EllipseArgs.ADAPTER.decode(protoReader));
                } else if (nextTag == 10) {
                    builder.styles(ShapeStyle.ADAPTER.decode(protoReader));
                } else if (nextTag != 11) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.transform(Transform.ADAPTER.decode(protoReader));
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.opensource.svgaplayer.proto.ShapeEntity$Builder] */
        /* JADX WARN: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump */
        public com.opensource.svgaplayer.proto.ShapeEntity redact(com.opensource.svgaplayer.proto.ShapeEntity r3) {
            /*
                r2 = this;
                com.opensource.svgaplayer.proto.ShapeEntity$Builder r3 = r3.newBuilder2()
                com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle r0 = r3.styles
                if (r0 == 0) goto L_0x0014
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle> r0 = com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle.ADAPTER
                com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle r1 = r3.styles
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.ShapeEntity$ShapeStyle r0 = (com.opensource.svgaplayer.proto.ShapeEntity.ShapeStyle) r0
                r3.styles = r0
            L_0x0014:
                com.opensource.svgaplayer.proto.Transform r0 = r3.transform
                if (r0 == 0) goto L_0x0024
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.Transform> r0 = com.opensource.svgaplayer.proto.Transform.ADAPTER
                com.opensource.svgaplayer.proto.Transform r1 = r3.transform
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.Transform r0 = (com.opensource.svgaplayer.proto.Transform) r0
                r3.transform = r0
            L_0x0024:
                com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs r0 = r3.shape
                if (r0 == 0) goto L_0x0034
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs> r0 = com.opensource.svgaplayer.proto.ShapeEntity.ShapeArgs.ADAPTER
                com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs r1 = r3.shape
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.ShapeEntity$ShapeArgs r0 = (com.opensource.svgaplayer.proto.ShapeEntity.ShapeArgs) r0
                r3.shape = r0
            L_0x0034:
                com.opensource.svgaplayer.proto.ShapeEntity$RectArgs r0 = r3.rect
                if (r0 == 0) goto L_0x0044
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity$RectArgs> r0 = com.opensource.svgaplayer.proto.ShapeEntity.RectArgs.ADAPTER
                com.opensource.svgaplayer.proto.ShapeEntity$RectArgs r1 = r3.rect
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.ShapeEntity$RectArgs r0 = (com.opensource.svgaplayer.proto.ShapeEntity.RectArgs) r0
                r3.rect = r0
            L_0x0044:
                com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs r0 = r3.ellipse
                if (r0 == 0) goto L_0x0054
                com.squareup.wire.ProtoAdapter<com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs> r0 = com.opensource.svgaplayer.proto.ShapeEntity.EllipseArgs.ADAPTER
                com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs r1 = r3.ellipse
                java.lang.Object r0 = r0.redact(r1)
                com.opensource.svgaplayer.proto.ShapeEntity$EllipseArgs r0 = (com.opensource.svgaplayer.proto.ShapeEntity.EllipseArgs) r0
                r3.ellipse = r0
            L_0x0054:
                r3.clearUnknownFields()
                com.opensource.svgaplayer.proto.ShapeEntity r3 = r3.build()
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.proto.ShapeEntity.ProtoAdapter_ShapeEntity.redact(com.opensource.svgaplayer.proto.ShapeEntity):com.opensource.svgaplayer.proto.ShapeEntity");
        }
    }
}
