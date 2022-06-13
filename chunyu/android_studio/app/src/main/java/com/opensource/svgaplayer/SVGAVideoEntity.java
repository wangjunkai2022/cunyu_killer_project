package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGASoundManager;
import com.opensource.svgaplayer.bitmap.SVGABitmapByteArrayDecoder;
import com.opensource.svgaplayer.bitmap.SVGABitmapFileDecoder;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.entities.SVGAVideoSpriteEntity;
import com.opensource.svgaplayer.proto.AudioEntity;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.proto.MovieParams;
import com.opensource.svgaplayer.proto.SpriteEntity;
import com.opensource.svgaplayer.utils.SVGARect;
import com.opensource.svgaplayer.utils.log.LogUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okio.ByteString;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: SVGAVideoEntity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nB\u0017\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\rB'\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\u000eJ\u0006\u0010H\u001a\u00020.J\u001a\u0010I\u001a\u0004\u0018\u00010&2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u0014H\u0002J\u0012\u0010I\u001a\u0004\u0018\u00010&2\u0006\u0010L\u001a\u00020\u0014H\u0002J$\u0010M\u001a\u00020\u001d2\u0006\u0010N\u001a\u00020O2\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050%H\u0002J\u0018\u0010Q\u001a\u00020\u00052\u0006\u0010R\u001a\u00020\u00052\u0006\u0010S\u001a\u00020KH\u0002J\u001c\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050%2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001c\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020K0%2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0018\u0010V\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u0014H\u0002J\u0012\u0010Y\u001a\u0004\u0018\u00010;2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010Z\u001a\u00020.2\u0006\u0010[\u001a\u00020\fH\u0002J\u0010\u0010Z\u001a\u00020.2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J%\u0010\\\u001a\u00020.2\f\u0010]\u001a\b\u0012\u0004\u0012\u00020.0-2\b\u0010^\u001a\u0004\u0018\u000102H\u0000¢\u0006\u0002\b_J\u0010\u0010`\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010`\u001a\u00020.2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001e\u0010a\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020.0-H\u0002J\u0010\u0010c\u001a\u00020.2\u0006\u0010d\u001a\u00020\u0003H\u0002J\u0010\u0010e\u001a\u00020.2\u0006\u0010f\u001a\u00020gH\u0002J\u001e\u0010h\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020.0-H\u0002R\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010\"\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0012R&\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020&0%X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00103\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010:\u001a\u0004\u0018\u00010;X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R \u0010@\u001a\b\u0012\u0004\u0012\u00020A0\u001cX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u001f\"\u0004\bC\u0010!R\u001e\u0010E\u001a\u00020D2\u0006\u0010\u000f\u001a\u00020D@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bF\u0010G¨\u0006i"}, d2 = {"Lcom/opensource/svgaplayer/SVGAVideoEntity;", "", "json", "Lorg/json/JSONObject;", "cacheDir", "Ljava/io/File;", "(Lorg/json/JSONObject;Ljava/io/File;)V", "frameWidth", "", "frameHeight", "(Lorg/json/JSONObject;Ljava/io/File;II)V", "entity", "Lcom/opensource/svgaplayer/proto/MovieEntity;", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V", "<set-?>", "FPS", "getFPS", "()I", "TAG", "", "antiAlias", "", "getAntiAlias", "()Z", "setAntiAlias", "(Z)V", "audioList", "", "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;", "getAudioList$com_opensource_svgaplayer", "()Ljava/util/List;", "setAudioList$com_opensource_svgaplayer", "(Ljava/util/List;)V", "frames", "getFrames", "imageMap", "Ljava/util/HashMap;", "Landroid/graphics/Bitmap;", "getImageMap$com_opensource_svgaplayer", "()Ljava/util/HashMap;", "setImageMap$com_opensource_svgaplayer", "(Ljava/util/HashMap;)V", "mCacheDir", "mCallback", "Lkotlin/Function0;", "", "mFrameHeight", "mFrameWidth", "mPlayCallback", "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;", "movieItem", "getMovieItem", "()Lcom/opensource/svgaplayer/proto/MovieEntity;", "setMovieItem", "(Lcom/opensource/svgaplayer/proto/MovieEntity;)V", "soundCallback", "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;", "soundPool", "Landroid/media/SoundPool;", "getSoundPool$com_opensource_svgaplayer", "()Landroid/media/SoundPool;", "setSoundPool$com_opensource_svgaplayer", "(Landroid/media/SoundPool;)V", "spriteList", "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;", "getSpriteList$com_opensource_svgaplayer", "setSpriteList$com_opensource_svgaplayer", "Lcom/opensource/svgaplayer/utils/SVGARect;", "videoSize", "getVideoSize", "()Lcom/opensource/svgaplayer/utils/SVGARect;", "clear", "createBitmap", "byteArray", "", "filePath", "createSvgaAudioEntity", "audio", "Lcom/opensource/svgaplayer/proto/AudioEntity;", "audiosFileMap", "generateAudioFile", "audioCache", "value", "generateAudioFileMap", "generateAudioMap", "generateBitmapFilePath", "imgName", "imgKey", "generateSoundPool", "parserImages", "obj", "prepare", "callback", "playCallback", "prepare$com_opensource_svgaplayer", "resetSprites", "setupAudios", "completionBlock", "setupByJson", "movieObject", "setupByMovie", "movieParams", "Lcom/opensource/svgaplayer/proto/MovieParams;", "setupSoundPool", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class SVGAVideoEntity {
    private int FPS;
    private final String TAG;
    private boolean antiAlias;
    private List<SVGAAudioEntity> audioList;
    private int frames;
    private HashMap<String, Bitmap> imageMap;
    private File mCacheDir;
    private Function0<Unit> mCallback;
    private int mFrameHeight;
    private int mFrameWidth;
    private SVGAParser.PlayCallback mPlayCallback;
    private MovieEntity movieItem;
    private SVGASoundManager.SVGASoundCallBack soundCallback;
    private SoundPool soundPool;
    private List<SVGAVideoSpriteEntity> spriteList;
    private SVGARect videoSize;

    public static final /* synthetic */ Function0 access$getMCallback$p(SVGAVideoEntity sVGAVideoEntity) {
        Function0<Unit> function0 = sVGAVideoEntity.mCallback;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCallback");
        }
        return function0;
    }

    public final boolean getAntiAlias() {
        return this.antiAlias;
    }

    public final void setAntiAlias(boolean z) {
        this.antiAlias = z;
    }

    public final MovieEntity getMovieItem() {
        return this.movieItem;
    }

    public final void setMovieItem(MovieEntity movieEntity) {
        this.movieItem = movieEntity;
    }

    public final SVGARect getVideoSize() {
        return this.videoSize;
    }

    public final int getFPS() {
        return this.FPS;
    }

    public final int getFrames() {
        return this.frames;
    }

    public final List<SVGAVideoSpriteEntity> getSpriteList$com_opensource_svgaplayer() {
        return this.spriteList;
    }

    public final void setSpriteList$com_opensource_svgaplayer(List<SVGAVideoSpriteEntity> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.spriteList = list;
    }

    public final List<SVGAAudioEntity> getAudioList$com_opensource_svgaplayer() {
        return this.audioList;
    }

    public final void setAudioList$com_opensource_svgaplayer(List<SVGAAudioEntity> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.audioList = list;
    }

    public final SoundPool getSoundPool$com_opensource_svgaplayer() {
        return this.soundPool;
    }

    public final void setSoundPool$com_opensource_svgaplayer(SoundPool soundPool) {
        this.soundPool = soundPool;
    }

    public final HashMap<String, Bitmap> getImageMap$com_opensource_svgaplayer() {
        return this.imageMap;
    }

    public final void setImageMap$com_opensource_svgaplayer(HashMap<String, Bitmap> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.imageMap = hashMap;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SVGAVideoEntity(JSONObject jSONObject, File file) {
        this(jSONObject, file, 0, 0);
        Intrinsics.checkParameterIsNotNull(jSONObject, "json");
        Intrinsics.checkParameterIsNotNull(file, "cacheDir");
    }

    public SVGAVideoEntity(JSONObject jSONObject, File file, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(jSONObject, "json");
        Intrinsics.checkParameterIsNotNull(file, "cacheDir");
        this.TAG = "SVGAVideoEntity";
        this.antiAlias = true;
        this.videoSize = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.FPS = 15;
        this.spriteList = CollectionsKt.emptyList();
        this.audioList = CollectionsKt.emptyList();
        this.imageMap = new HashMap<>();
        this.mFrameWidth = i;
        this.mFrameHeight = i2;
        this.mCacheDir = file;
        JSONObject optJSONObject = jSONObject.optJSONObject("movie");
        if (optJSONObject != null) {
            setupByJson(optJSONObject);
            try {
                parserImages(jSONObject);
            } catch (Exception e) {
                e.printStackTrace();
            } catch (OutOfMemoryError e2) {
                e2.printStackTrace();
            }
            resetSprites(jSONObject);
        }
    }

    private final void setupByJson(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("viewBox");
        if (optJSONObject != null) {
            this.videoSize = new SVGARect(0.0d, 0.0d, optJSONObject.optDouble("width", 0.0d), optJSONObject.optDouble("height", 0.0d));
        }
        this.FPS = jSONObject.optInt("fps", 20);
        this.frames = jSONObject.optInt("frames", 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SVGAVideoEntity(MovieEntity movieEntity, File file) {
        this(movieEntity, file, 0, 0);
        Intrinsics.checkParameterIsNotNull(movieEntity, "entity");
        Intrinsics.checkParameterIsNotNull(file, "cacheDir");
    }

    public SVGAVideoEntity(MovieEntity movieEntity, File file, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(movieEntity, "entity");
        Intrinsics.checkParameterIsNotNull(file, "cacheDir");
        this.TAG = "SVGAVideoEntity";
        this.antiAlias = true;
        this.videoSize = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.FPS = 15;
        this.spriteList = CollectionsKt.emptyList();
        this.audioList = CollectionsKt.emptyList();
        this.imageMap = new HashMap<>();
        this.mFrameWidth = i;
        this.mFrameHeight = i2;
        this.mCacheDir = file;
        this.movieItem = movieEntity;
        MovieParams movieParams = movieEntity.params;
        if (movieParams != null) {
            setupByMovie(movieParams);
        }
        try {
            parserImages(movieEntity);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
        resetSprites(movieEntity);
    }

    private final void setupByMovie(MovieParams movieParams) {
        Float f = movieParams.viewBoxWidth;
        float f2 = 0.0f;
        double floatValue = (double) (f != null ? f.floatValue() : 0.0f);
        Float f3 = movieParams.viewBoxHeight;
        if (f3 != null) {
            f2 = f3.floatValue();
        }
        this.videoSize = new SVGARect(0.0d, 0.0d, floatValue, (double) f2);
        Integer num = movieParams.fps;
        this.FPS = num != null ? num.intValue() : 20;
        Integer num2 = movieParams.frames;
        this.frames = num2 != null ? num2.intValue() : 0;
    }

    public final void prepare$com_opensource_svgaplayer(Function0<Unit> function0, SVGAParser.PlayCallback playCallback) {
        Intrinsics.checkParameterIsNotNull(function0, "callback");
        this.mCallback = function0;
        this.mPlayCallback = playCallback;
        MovieEntity movieEntity = this.movieItem;
        if (movieEntity == null) {
            Function0<Unit> function02 = this.mCallback;
            if (function02 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCallback");
            }
            function02.invoke();
            return;
        }
        if (movieEntity == null) {
            Intrinsics.throwNpe();
        }
        setupAudios(movieEntity, new Function0<Unit>() { // from class: com.opensource.svgaplayer.SVGAVideoEntity$prepare$1
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SVGAVideoEntity.access$getMCallback$p(SVGAVideoEntity.this).invoke();
            }
        });
    }

    private final void parserImages(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("images");
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            Intrinsics.checkExpressionValueIsNotNull(keys, "imgJson.keys()");
            while (keys.hasNext()) {
                String next = keys.next();
                String obj = optJSONObject.get(next).toString();
                Intrinsics.checkExpressionValueIsNotNull(next, "imgKey");
                String generateBitmapFilePath = generateBitmapFilePath(obj, next);
                if (!(generateBitmapFilePath.length() == 0)) {
                    String replace$default = StringsKt.replace$default(next, ".matte", "", false, 4, (Object) null);
                    Bitmap createBitmap = createBitmap(generateBitmapFilePath);
                    if (createBitmap != null) {
                        this.imageMap.put(replace$default, createBitmap);
                    }
                } else {
                    return;
                }
            }
        }
    }

    private final String generateBitmapFilePath(String str, String str2) {
        String str3 = this.mCacheDir.getAbsolutePath() + "/" + str;
        String str4 = str3 + ".png";
        String str5 = this.mCacheDir.getAbsolutePath() + "/" + str2 + ".png";
        if (new File(str3).exists()) {
            return str3;
        }
        if (new File(str4).exists()) {
            return str4;
        }
        return new File(str5).exists() ? str5 : "";
    }

    private final Bitmap createBitmap(String str) {
        return SVGABitmapFileDecoder.INSTANCE.decodeBitmapFrom(str, this.mFrameWidth, this.mFrameHeight);
    }

    private final void parserImages(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        Map<String, ByteString> map = movieEntity.images;
        if (map != null && (entrySet = map.entrySet()) != null) {
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
                Intrinsics.checkExpressionValueIsNotNull(byteArray, "byteArray");
                if (byteArray.length >= 4) {
                    List<Byte> slice = ArraysKt.slice(byteArray, new IntRange(0, 3));
                    if (slice.get(0).byteValue() != 73 || slice.get(1).byteValue() != 68 || slice.get(2).byteValue() != 51) {
                        String utf8 = ((ByteString) entry.getValue()).utf8();
                        Intrinsics.checkExpressionValueIsNotNull(utf8, "entry.value.utf8()");
                        Object key = entry.getKey();
                        Intrinsics.checkExpressionValueIsNotNull(key, "entry.key");
                        Bitmap createBitmap = createBitmap(byteArray, generateBitmapFilePath(utf8, (String) key));
                        if (createBitmap != null) {
                            Object key2 = entry.getKey();
                            Intrinsics.checkExpressionValueIsNotNull(key2, "entry.key");
                            this.imageMap.put(key2, createBitmap);
                        }
                    }
                }
            }
        }
    }

    private final Bitmap createBitmap(byte[] bArr, String str) {
        Bitmap decodeBitmapFrom = SVGABitmapByteArrayDecoder.INSTANCE.decodeBitmapFrom(bArr, this.mFrameWidth, this.mFrameHeight);
        return decodeBitmapFrom != null ? decodeBitmapFrom : createBitmap(str);
    }

    private final void resetSprites(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("sprites");
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new SVGAVideoSpriteEntity(optJSONObject));
                }
            }
        }
        this.spriteList = CollectionsKt.toList(arrayList);
    }

    private final void resetSprites(MovieEntity movieEntity) {
        ArrayList arrayList;
        List<SpriteEntity> list = movieEntity.sprites;
        if (list != null) {
            List<SpriteEntity> list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (SpriteEntity spriteEntity : list2) {
                Intrinsics.checkExpressionValueIsNotNull(spriteEntity, "it");
                arrayList2.add(new SVGAVideoSpriteEntity(spriteEntity));
            }
            arrayList = arrayList2;
        } else {
            arrayList = CollectionsKt.emptyList();
        }
        this.spriteList = arrayList;
    }

    private final void setupAudios(MovieEntity movieEntity, Function0<Unit> function0) {
        if (movieEntity.audios == null || movieEntity.audios.isEmpty()) {
            function0.invoke();
            return;
        }
        setupSoundPool(movieEntity, function0);
        HashMap<String, File> generateAudioFileMap = generateAudioFileMap(movieEntity);
        if (generateAudioFileMap.size() == 0) {
            function0.invoke();
            return;
        }
        List<AudioEntity> list = movieEntity.audios;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (AudioEntity audioEntity : list) {
            Intrinsics.checkExpressionValueIsNotNull(audioEntity, "audio");
            arrayList.add(createSvgaAudioEntity(audioEntity, generateAudioFileMap));
        }
        this.audioList = arrayList;
    }

    private final SVGAAudioEntity createSvgaAudioEntity(AudioEntity audioEntity, HashMap<String, File> hashMap) {
        SVGAAudioEntity sVGAAudioEntity = new SVGAAudioEntity(audioEntity);
        Integer num = audioEntity.startTime;
        int i = 0;
        double intValue = (double) (num != null ? num.intValue() : 0);
        Integer num2 = audioEntity.totalTime;
        if (num2 != null) {
            i = num2.intValue();
        }
        double d = (double) i;
        if (((int) d) == 0) {
            return sVGAAudioEntity;
        }
        SVGAParser.PlayCallback playCallback = this.mPlayCallback;
        if (playCallback != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, File> entry : hashMap.entrySet()) {
                arrayList.add(entry.getValue());
            }
            playCallback.onPlay(arrayList);
            Function0<Unit> function0 = this.mCallback;
            if (function0 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCallback");
            }
            function0.invoke();
            return sVGAAudioEntity;
        }
        File file = hashMap.get(audioEntity.audioKey);
        if (file != null) {
            FileInputStream fileInputStream = new FileInputStream(file);
            Integer num3 = null;
            th = null;
            try {
                FileInputStream fileInputStream2 = fileInputStream;
                double available = (double) fileInputStream2.available();
                long j = (long) ((intValue / d) * available);
                if (SVGASoundManager.INSTANCE.isInit$com_opensource_svgaplayer()) {
                    sVGAAudioEntity.setSoundID(Integer.valueOf(SVGASoundManager.INSTANCE.load$com_opensource_svgaplayer(this.soundCallback, fileInputStream2.getFD(), j, (long) available, 1)));
                } else {
                    SoundPool soundPool = this.soundPool;
                    if (soundPool != null) {
                        num3 = Integer.valueOf(soundPool.load(fileInputStream2.getFD(), j, (long) available, 1));
                    }
                    sVGAAudioEntity.setSoundID(num3);
                }
                Unit unit = Unit.INSTANCE;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return sVGAAudioEntity;
    }

    private final File generateAudioFile(File file, byte[] bArr) {
        file.createNewFile();
        new FileOutputStream(file).write(bArr);
        return file;
    }

    private final HashMap<String, File> generateAudioFileMap(MovieEntity movieEntity) {
        HashMap<String, byte[]> generateAudioMap = generateAudioMap(movieEntity);
        HashMap<String, File> hashMap = new HashMap<>();
        HashMap<String, byte[]> hashMap2 = generateAudioMap;
        if (hashMap2.size() > 0) {
            for (Map.Entry<String, byte[]> entry : hashMap2.entrySet()) {
                File buildAudioFile = SVGACache.INSTANCE.buildAudioFile(entry.getKey());
                HashMap<String, File> hashMap3 = hashMap;
                String key = entry.getKey();
                File file = buildAudioFile.exists() ? buildAudioFile : null;
                if (file == null) {
                    file = generateAudioFile(buildAudioFile, entry.getValue());
                }
                hashMap3.put(key, file);
            }
        }
        return hashMap;
    }

    private final HashMap<String, byte[]> generateAudioMap(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        HashMap<String, byte[]> hashMap = new HashMap<>();
        Map<String, ByteString> map = movieEntity.images;
        if (!(map == null || (entrySet = map.entrySet()) == null)) {
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
                Intrinsics.checkExpressionValueIsNotNull(byteArray, "byteArray");
                if (byteArray.length >= 4) {
                    List<Byte> slice = ArraysKt.slice(byteArray, new IntRange(0, 3));
                    if (slice.get(0).byteValue() == 73 && slice.get(1).byteValue() == 68 && slice.get(2).byteValue() == 51) {
                        Intrinsics.checkExpressionValueIsNotNull(str, "imageKey");
                        hashMap.put(str, byteArray);
                    } else if (slice.get(0).byteValue() == -1 && slice.get(1).byteValue() == -5 && slice.get(2).byteValue() == -108) {
                        Intrinsics.checkExpressionValueIsNotNull(str, "imageKey");
                        hashMap.put(str, byteArray);
                    }
                }
            }
        }
        return hashMap;
    }

    private final void setupSoundPool(MovieEntity movieEntity, Function0<Unit> function0) {
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = 0;
        if (SVGASoundManager.INSTANCE.isInit$com_opensource_svgaplayer()) {
            this.soundCallback = new SVGASoundManager.SVGASoundCallBack(intRef, movieEntity, function0) { // from class: com.opensource.svgaplayer.SVGAVideoEntity$setupSoundPool$1
                final /* synthetic */ Function0 $completionBlock;
                final /* synthetic */ MovieEntity $entity;
                final /* synthetic */ Ref.IntRef $soundLoaded;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.$soundLoaded = r2;
                    this.$entity = r3;
                    this.$completionBlock = r4;
                }

                @Override // com.opensource.svgaplayer.SVGASoundManager.SVGASoundCallBack
                public void onVolumeChange(float f) {
                    SVGASoundManager.INSTANCE.setVolume(f, SVGAVideoEntity.this);
                }

                @Override // com.opensource.svgaplayer.SVGASoundManager.SVGASoundCallBack
                public void onComplete() {
                    this.$soundLoaded.element++;
                    int i = this.$soundLoaded.element;
                    List<AudioEntity> list = this.$entity.audios;
                    Intrinsics.checkExpressionValueIsNotNull(list, "entity.audios");
                    if (i >= list.size()) {
                        this.$completionBlock.invoke();
                    }
                }
            };
            return;
        }
        this.soundPool = generateSoundPool(movieEntity);
        LogUtils.INSTANCE.info("SVGAParser", "pool_start");
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener(movieEntity, function0) { // from class: com.opensource.svgaplayer.SVGAVideoEntity$setupSoundPool$2
                final /* synthetic */ Function0 $completionBlock;
                final /* synthetic */ MovieEntity $entity;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.$entity = r2;
                    this.$completionBlock = r3;
                }

                @Override // android.media.SoundPool.OnLoadCompleteListener
                public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                    LogUtils.INSTANCE.info("SVGAParser", "pool_complete");
                    Ref.IntRef.this.element++;
                    int i3 = Ref.IntRef.this.element;
                    List<AudioEntity> list = this.$entity.audios;
                    Intrinsics.checkExpressionValueIsNotNull(list, "entity.audios");
                    if (i3 >= list.size()) {
                        this.$completionBlock.invoke();
                    }
                }
            });
        }
    }

    private final SoundPool generateSoundPool(MovieEntity movieEntity) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                SoundPool.Builder audioAttributes = new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).build());
                List<AudioEntity> list = movieEntity.audios;
                Intrinsics.checkExpressionValueIsNotNull(list, "entity.audios");
                return audioAttributes.setMaxStreams(RangesKt.coerceAtMost(12, list.size())).build();
            }
            List<AudioEntity> list2 = movieEntity.audios;
            Intrinsics.checkExpressionValueIsNotNull(list2, "entity.audios");
            return new SoundPool(RangesKt.coerceAtMost(12, list2.size()), 3, 0);
        } catch (Exception e) {
            while (true) {
                LogUtils.INSTANCE.error(this.TAG, e);
                return null;
            }
        }
    }

    public final void clear() {
        if (SVGASoundManager.INSTANCE.isInit$com_opensource_svgaplayer()) {
            for (SVGAAudioEntity sVGAAudioEntity : this.audioList) {
                Integer soundID = sVGAAudioEntity.getSoundID();
                if (soundID != null) {
                    SVGASoundManager.INSTANCE.unload$com_opensource_svgaplayer(soundID.intValue());
                }
            }
            this.soundCallback = null;
        }
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        this.soundPool = null;
        this.audioList = CollectionsKt.emptyList();
        this.spriteList = CollectionsKt.emptyList();
        this.imageMap.clear();
    }
}
