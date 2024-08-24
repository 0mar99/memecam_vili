.class public Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
.super Ljava/lang/Object;
.source "FakeSatStreamConfiguration.java"


# static fields
.field public static final COMPONENT_SIZE:I = 0x6

.field public static final NATIVE_SIZE:I = 0x18

.field public static final TAG:Ljava/lang/String; = "FakeSatStreamConfiguration"

.field public static final TYPE_JPEG_OUTPUT:I = 0x3

.field public static final TYPE_YUV_INPUT:I = 0x1

.field public static final TYPE_YUV_OUTPUT:I = 0x2


# instance fields
.field public final height:I

.field public final type:I

.field public final unused:I

.field public final width:I

.field public final zoomStart:F

.field public final zoomStop:F


# direct methods
.method public constructor <init>(FFIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStart:F

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStop:F

    .line 4
    iput p3, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    .line 5
    iput p4, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    .line 6
    iput p5, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    .line 7
    iput p6, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->unused:I

    return-void
.end method

.method public static doUnmarshalBytes(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 7
    new-instance p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;-><init>(FFIIII)V

    return-object p0
.end method

.method public static doUnmarshalInts([II)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 8

    .line 1
    aget v0, p0, p1

    int-to-float v2, v0

    add-int/lit8 v0, p1, 0x1

    .line 2
    aget v0, p0, v0

    int-to-float v3, v0

    add-int/lit8 v0, p1, 0x2

    .line 3
    aget v4, p0, v0

    add-int/lit8 v0, p1, 0x3

    .line 4
    aget v5, p0, v0

    add-int/lit8 v0, p1, 0x4

    .line 5
    aget v6, p0, v0

    add-int/lit8 p1, p1, 0x5

    .line 6
    aget v7, p0, p1

    .line 7
    new-instance p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;-><init>(FFIIII)V

    return-object p0
.end method

.method public static getComponentSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static getNativeSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public static parse(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->MTK_FAKE_SAT_STREAM_CONFIGURATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 3
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->unmarshalBytes([B)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->FAKE_SAT_STREAM_CONFIGURATION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 5
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->unmarshalInts([I)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p0

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeSatStreamConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static unmarshalBytes([B)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    array-length v1, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->getNativeSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->doUnmarshalBytes(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    .line 7
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    .line 9
    :cond_3
    :goto_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->getNativeSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    array-length v0, p0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "Expected bytes size should be %d, but got: %d"

    .line 11
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FakeSatStreamConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static unmarshalInts([I)[Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->getNativeSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->getComponentSize()I

    move-result v2

    div-int/2addr v1, v2

    .line 3
    new-array v2, v1, [Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->getComponentSize()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-static {p0, v3}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->doUnmarshalInts([II)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 5
    :cond_2
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->getNativeSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    array-length v0, p0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "Expected ints size should be %d, but got: %d"

    .line 7
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FakeSatStreamConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FakeSatStreamConfiguration(zoomStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zoomStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
