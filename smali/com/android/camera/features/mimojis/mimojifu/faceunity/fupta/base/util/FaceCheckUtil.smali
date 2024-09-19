.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FaceCheckUtil;
.super Ljava/lang/Object;
.source "FaceCheckUtil.java"


# static fields
.field public static final STATUS_FACE_BEYOND_20_DEGREES:I = 0x9

.field public static final STATUS_FACE_OCCLUSION:I = 0x6

.field public static final STATUS_FACE_TOO_BIG:I = 0x7

.field public static final STATUS_FACE_TOO_SMALL:I = 0x8

.field public static final STATUS_LEFT_EYES_OCCLUSION:I = 0x2

.field public static final STATUS_MOUTH_OCCLUSION:I = 0x4

.field public static final STATUS_MULTIPLE_FACES:I = 0xa

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NOSE_OCCLUSION:I = 0x5

.field public static final STATUS_NO_FACE:I = 0x1

.field public static final STATUS_RIGHT_EYES_OCCLUSION:I = 0x3

.field public static sLight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExpression([F)Z
    .locals 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static checkFace(III[FI[F)I
    .locals 8

    const/4 p1, 0x2

    new-array v0, p1, [F

    const/4 v1, 0x0

    .line 1
    aget v2, p5, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p5, v2

    aput v3, v0, v2

    new-array v3, p1, [F

    .line 2
    aget v4, p5, v1

    aput v4, v3, v1

    aget v4, p5, v2

    aput v4, v3, v2

    new-array v4, p1, [I

    .line 3
    fill-array-data v4, :array_0

    move v5, v1

    :goto_0
    if-ge v5, p1, :cond_0

    .line 4
    aget v6, v0, v1

    aget v7, v4, v5

    mul-int/2addr v7, p1

    aget v7, p5, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v0, v1

    .line 5
    aget v6, v0, v2

    aget v7, v4, v5

    mul-int/2addr v7, p1

    add-int/2addr v7, v2

    aget v7, p5, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v0, v2

    .line 6
    aget v6, v3, v1

    aget v7, v4, v5

    mul-int/2addr v7, p1

    aget v7, p5, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v1

    .line 7
    aget v6, v3, v2

    aget v7, v4, v5

    mul-int/2addr v7, p1

    add-int/2addr v7, v2

    aget v7, p5, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    aget p1, v0, v1

    aget p5, v3, v1

    sub-float/2addr p1, p5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    if-ge p2, v2, :cond_1

    return v2

    :cond_1
    if-le p2, v2, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    if-ne p4, v2, :cond_3

    const/4 p0, 0x4

    return p0

    .line 9
    :cond_3
    invoke-static {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FaceCheckUtil;->checkRotation([F)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x9

    return p0

    :cond_4
    float-to-double p0, p1

    const-wide p2, 0x3fc999999999999aL    # 0.2

    cmpg-double p2, p0, p2

    if-gez p2, :cond_5

    const/16 p0, 0x8

    return p0

    :cond_5
    const-wide p2, 0x3fd999999999999aL    # 0.4

    cmpl-double p0, p0, p2

    if-lez p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    return v1

    nop

    :array_0
    .array-data 4
        0x7
        0xe
    .end array-data
.end method

.method public static checkFace(III[F[F[F)I
    .locals 0

    const/4 p5, 0x1

    if-ge p2, p5, :cond_0

    return p5

    :cond_0
    if-le p2, p5, :cond_1

    const/16 p0, 0xa

    return p0

    .line 10
    :cond_1
    invoke-static {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FaceCheckUtil;->checkRotation([F)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p0, 0x9

    return p0

    .line 11
    :cond_2
    invoke-static {p4, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FaceCheckUtil;->checkFaceRect([FII)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static checkFaceRect([FII)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v2, p0, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x1

    .line 2
    aget v4, p0, v3

    const/4 v5, 0x3

    aget p0, p0, v5

    add-float/2addr v4, p0

    div-float/2addr v4, v2

    float-to-double v1, v1

    int-to-double p0, p1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v5, p0

    cmpg-double v5, v1, v5

    if-ltz v5, :cond_0

    const-wide v5, 0x3fe199999999999aL    # 0.55

    mul-double/2addr p0, v5

    cmpl-double p0, v1, p0

    if-gtz p0, :cond_0

    float-to-double p0, v4

    int-to-double v1, p2

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v4, v1

    cmpg-double p2, p0, v4

    if-ltz p2, :cond_0

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v1, v4

    cmpl-double p0, p0, v1

    if-lez p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0
.end method

.method public static checkRotation([F)Z
    .locals 26

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    float-to-double v1, v1

    const/4 v3, 0x1

    .line 2
    aget v4, p0, v3

    float-to-double v4, v4

    const/4 v6, 0x2

    .line 3
    aget v6, p0, v6

    float-to-double v6, v6

    const/4 v8, 0x3

    .line 4
    aget v8, p0, v8

    float-to-double v8, v8

    mul-double v10, v8, v6

    mul-double v12, v4, v6

    add-double/2addr v12, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    mul-double v16, v1, v1

    mul-double v18, v4, v4

    add-double v16, v16, v18

    mul-double v16, v16, v14

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v14, v20, v16

    .line 5
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v12, v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v12, v12, v16

    mul-double/2addr v8, v4

    mul-double v24, v6, v1

    sub-double v8, v8, v24

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v22

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    div-double/2addr v8, v14

    mul-double v8, v8, v16

    mul-double/2addr v1, v4

    add-double/2addr v10, v1

    mul-double v10, v10, v22

    mul-double/2addr v6, v6

    add-double v18, v18, v6

    mul-double v18, v18, v22

    sub-double v1, v20, v18

    .line 7
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    div-double/2addr v1, v14

    mul-double v1, v1, v16

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v6, v12, v4

    if-gtz v6, :cond_0

    const-wide/high16 v6, -0x3fcc000000000000L    # -20.0

    cmpg-double v10, v12, v6

    if-ltz v10, :cond_0

    cmpl-double v10, v8, v4

    if-gtz v10, :cond_0

    cmpg-double v8, v8, v6

    if-ltz v8, :cond_0

    cmpl-double v4, v1, v4

    if-gtz v4, :cond_0

    cmpg-double v1, v1, v6

    if-gez v1, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0
.end method
