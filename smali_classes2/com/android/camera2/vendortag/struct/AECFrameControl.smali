.class public Lcom/android/camera2/vendortag/struct/AECFrameControl;
.super Ljava/lang/Object;
.source "AECFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;
    }
.end annotation


# static fields
.field public static final ADRC_OFFSET:I = 0x78

.field public static final EXPOSURE_INDEX_COUNT:I = 0x3

.field public static final SIZE:I = 0xde

.field public static final SIZE_ALIGN:I = 0x4

.field public static final TAG:Ljava/lang/String; = "AECFrameControl"


# instance fields
.field public mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

.field public mCompenADRCGain:F


# direct methods
.method public constructor <init>([Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    .line 2
    iput-object v0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    .line 3
    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    .line 4
    iput p2, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mCompenADRCGain:F

    return-void
.end method

.method public static getNativeSize()I
    .locals 1

    const/16 v0, 0xde

    return v0
.end method

.method public static unmarshal([B)Lcom/android/camera2/vendortag/struct/AECFrameControl;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getNativeSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    new-instance v3, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    invoke-direct {v3}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;-><init>()V

    aput-object v3, v2, v0

    .line 4
    aget-object v3, v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$002(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;J)J

    .line 5
    aget-object v3, v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$102(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F

    .line 6
    aget-object v3, v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$202(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F

    .line 7
    aget-object v3, v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$302(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x78

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    .line 10
    new-instance v0, Lcom/android/camera2/vendortag/struct/AECFrameControl;

    invoke-direct {v0, v2, p0}, Lcom/android/camera2/vendortag/struct/AECFrameControl;-><init>([Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)V

    return-object v0

    .line 11
    :cond_2
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getNativeSize()I

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

    const-string p0, "Expected size should be %d, but got: %d"

    .line 13
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AECFrameControl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    return-object p0
.end method

.method public getCompenADRCGain()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mCompenADRCGain:F

    return p0
.end method
