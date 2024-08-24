.class public Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
.super Ljava/lang/Object;
.source "MiMotionVelocity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MiMotionVelocity"


# instance fields
.field public mVelocityFastRatio:F

.field public mVelocityMax:F

.field public mVelocityMean:F

.field public mVelocityMiddleRatio:F

.field public mVelocitySlowRatio:F

.field public mVelocityStaticRatio:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityStaticRatio:F

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocitySlowRatio:F

    .line 4
    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMiddleRatio:F

    .line 5
    iput p4, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityFastRatio:F

    .line 6
    iput p5, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMax:F

    .line 7
    iput p6, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMean:F

    return-void
.end method

.method public static getNativeSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public static unmarshal([B)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
    .locals 7

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->getNativeSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 9
    new-instance p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;-><init>(FFFFFF)V

    return-object p0

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->getNativeSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    array-length v3, p0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Expected size should be %d, but got: %d"

    .line 12
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiMotionVelocity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mVelocityStaticRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityStaticRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocitySlowRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocitySlowRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityMiddleRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMiddleRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityFastRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityFastRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityMean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMean:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
