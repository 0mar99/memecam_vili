.class public Lcom/android/camera/watermark/WaterMarkUtil;
.super Ljava/lang/Object;
.source "WaterMarkUtil.java"


# static fields
.field public static final STANDARD_WIDTH:F = 3000.0f

.field public static final TAG:Ljava/lang/String; = "WaterMarkUtil"

.field public static final TOLERANCE:F = 0.02f

.field public static final sCinematicAspectWaterMarkRatio:F = 0.86f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcDualCameraWatermarkLocation(IIII)[I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkRatio(II)F

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p1, p0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    int-to-float p2, p3

    mul-float/2addr p2, p0

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    .line 4
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingX()F

    move-result p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    .line 5
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingY()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    and-int/lit8 p0, p0, -0x2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public static calcDualCameraWatermarkLocationByCinema(IIIII)[I
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkRatio(II)F

    move-result v0

    int-to-float p2, p2

    mul-float/2addr p2, v0

    .line 2
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    int-to-float p3, p3

    mul-float/2addr p3, v0

    .line 3
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    .line 4
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    .line 5
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingY()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getCinematicAspectWaterMarkRatio()F

    move-result v0

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkCinematicAspectMargin(II)I

    move-result v2

    const/16 v3, 0x5a

    if-eq p4, v3, :cond_0

    const/16 v3, 0x10e

    if-ne p4, v3, :cond_1

    :cond_0
    if-le p0, p1, :cond_1

    move v4, p1

    move p1, p0

    move p0, v4

    :cond_1
    if-ge p0, p1, :cond_2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    :goto_0
    const/4 p0, 0x4

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p2, p0, p1

    const/4 p1, 0x1

    aput p3, p0, p1

    const/4 p1, 0x2

    aput v1, p0, p1

    const/4 p1, 0x3

    aput v0, p0, p1

    return-object p0
.end method

.method public static getAIWatermarkRange(ZI[I[FLandroid/graphics/Rect;IILandroid/graphics/Bitmap;)[I
    .locals 15

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x4

    new-array v5, v4, [I

    const/4 v6, 0x0

    .line 1
    aget v7, p3, v6

    const/4 v8, 0x1

    aget v9, p3, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/16 v9, 0xb4

    const/16 v10, 0x10e

    const/16 v11, 0x5a

    if-eq v0, v11, :cond_0

    if-ne v0, v10, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    move v12, v9

    goto :goto_0

    :cond_1
    move v12, v6

    :goto_0
    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v12, v9, :cond_2

    .line 2
    aget v9, p2, v8

    int-to-float v9, v9

    aget v12, p3, v6

    mul-float/2addr v9, v12

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v6

    .line 3
    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    aget v10, p2, v14

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aget v10, p3, v8

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v8

    .line 4
    aget v9, p2, v13

    aget v10, p2, v8

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v14

    .line 5
    aget v9, p2, v14

    aget v10, p2, v6

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    aput v7, v5, v13

    goto :goto_1

    .line 6
    :cond_2
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    aget v10, p2, v13

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aget v10, p3, v6

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v6

    .line 7
    aget v9, p2, v6

    int-to-float v9, v9

    aget v10, p3, v8

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v8

    .line 8
    aget v9, p2, v13

    aget v10, p2, v8

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v14

    .line 9
    aget v9, p2, v14

    aget v10, p2, v6

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    aput v7, v5, v13

    .line 10
    :goto_1
    aget v7, p3, v6

    aget v9, p3, v8

    sub-float/2addr v7, v9

    const v9, 0x3ca3d70a    # 0.02f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 11
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    aget v10, p3, v8

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    .line 12
    aget v9, p2, v8

    aget v10, p2, v13

    add-int/2addr v9, v10

    div-int/2addr v9, v14

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    div-int/2addr v10, v14

    sub-int/2addr v9, v10

    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v14

    int-to-float v9, v9

    int-to-float v1, v1

    div-float/2addr v9, v1

    .line 14
    aget v1, v5, v6

    mul-float/2addr v7, v9

    float-to-int v7, v7

    sub-int/2addr v1, v7

    aput v1, v5, v6

    .line 15
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 16
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v1, v1

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 17
    aget v7, v5, v14

    aget v9, v5, v13

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 18
    aget v9, v5, v14

    aget v10, v5, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v7, v7

    int-to-float v9, v9

    div-float/2addr v7, v9

    sub-float/2addr v1, v7

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v7, 0x3e4ccccd    # 0.2f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AIWatermark] bitmap and range are not match gap is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "WaterMarkUtil"

    invoke-static {v4, v7, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_4

    .line 21
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v14

    .line 22
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v13

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v14

    .line 24
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v13

    .line 25
    :cond_5
    :goto_2
    aget v0, v5, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v5, v6

    .line 26
    aget v0, v5, v8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v5, v8

    .line 27
    aget v0, v5, v6

    aget v1, v5, v14

    add-int/2addr v0, v1

    if-le v0, v3, :cond_6

    .line 28
    aget v0, v5, v14

    sub-int v0, v3, v0

    aput v0, v5, v6

    .line 29
    :cond_6
    aget v0, v5, v8

    aget v1, v5, v13

    add-int/2addr v0, v1

    if-le v0, v2, :cond_7

    .line 30
    aget v0, v5, v13

    sub-int v0, v2, v0

    aput v0, v5, v8

    .line 31
    :cond_7
    aget v0, v5, v6

    div-int/2addr v0, v14

    mul-int/2addr v0, v14

    aput v0, v5, v6

    .line 32
    aget v0, v5, v8

    div-int/2addr v0, v14

    mul-int/2addr v0, v14

    aput v0, v5, v8

    .line 33
    aget v0, v5, v14

    div-int/2addr v0, v4

    mul-int/2addr v0, v4

    aput v0, v5, v14

    .line 34
    aget v0, v5, v13

    div-int/2addr v0, v4

    mul-int/2addr v0, v4

    aput v0, v5, v13

    return-object v5
.end method

.method public static getCinematicAspectWaterMarkRatio()F
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f5c28f6    # 0.86f

    :goto_0
    return v0
.end method

.method public static getSuperMoonRange([I[FLandroid/graphics/Rect;)[I
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    aget v3, p1, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2
    aget v5, p0, v4

    int-to-float v5, v5

    aget v6, p1, v2

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v1, v2

    .line 3
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, p2

    const/4 p2, 0x2

    aget v6, p0, p2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aget p1, p1, v4

    mul-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    aput p1, v1, v4

    const/4 p1, 0x3

    .line 4
    aget v5, p0, p1

    aget v6, p0, v4

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v1, p2

    .line 5
    aget v5, p0, p2

    aget p0, p0, v2

    sub-int/2addr v5, p0

    int-to-float p0, v5

    mul-float/2addr p0, v3

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p0, v5

    aput p0, v1, p1

    .line 6
    aget p0, v1, v2

    div-int/2addr p0, p2

    mul-int/2addr p0, p2

    aput p0, v1, v2

    .line 7
    aget p0, v1, v4

    div-int/2addr p0, p2

    mul-int/2addr p0, p2

    aput p0, v1, v4

    .line 8
    aget p0, v1, p2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, p2

    .line 9
    aget p0, v1, p1

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, p1

    return-object v1
.end method

.method public static getTimeWatermarkStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1209a9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string p0, "  "

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Landroid/text/format/Time;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVendorWatermarkRange(III)[I
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    const/16 v7, 0x5a

    if-eq p2, v7, :cond_2

    const/16 v7, 0xb4

    if-eq p2, v7, :cond_1

    const/16 v7, 0x10e

    if-eq p2, v7, :cond_0

    goto :goto_0

    :cond_0
    aput v6, v1, v6

    aput v6, v1, v4

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, v1, v5

    aput p1, v1, v3

    goto :goto_0

    :cond_1
    aput v6, v1, v6

    aput v6, v1, v4

    aput p0, v1, v5

    int-to-float p0, p1

    mul-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, v1, v3

    goto :goto_0

    :cond_2
    int-to-float p2, p0

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sub-int/2addr p0, p2

    aput p0, v1, v6

    aput v6, v1, v4

    aput p2, v1, v5

    aput p1, v1, v3

    goto :goto_0

    :cond_3
    aput v6, v1, v6

    int-to-float p2, p1

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sub-int/2addr p1, p2

    aput p1, v1, v4

    aput p0, v1, v5

    aput p2, v1, v3

    .line 1
    :goto_0
    aget p0, v1, v6

    div-int/2addr p0, v5

    mul-int/2addr p0, v5

    aput p0, v1, v6

    .line 2
    aget p0, v1, v4

    div-int/2addr p0, v5

    mul-int/2addr p0, v5

    aput p0, v1, v4

    .line 3
    aget p0, v1, v5

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, v5

    .line 4
    aget p0, v1, v3

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, v3

    return-object v1
.end method

.method public static getWaterMarkPaddingX()F
    .locals 1

    const/high16 v0, 0x43020000    # 130.0f

    return v0
.end method

.method public static getWaterMarkPaddingY()F
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c00000    # 96.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42d80000    # 108.0f

    :goto_0
    return v0
.end method

.method public static getWatermarkCinematicAspectMargin(II)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    int-to-float p0, p0

    const/high16 p1, 0x41ac0000    # 21.5f

    div-float/2addr p0, p1

    sub-float/2addr v0, p0

    float-to-double p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    aput p2, p1, v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/ui/UploadedTexture;

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmapData(Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I
    .locals 14

    move/from16 v2, p2

    const-string v0, ", watermarkRange = "

    const-string v1, ", isLTR = "

    const-string v3, "WaterMarkUtil"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/effect/renders/WaterMark;->isLTR()Z

    move-result v10

    new-array v11, v7, [I

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v12

    aput v12, v11, v9

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v12

    aput v12, v11, v6

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingX()I

    move-result v12

    aput v12, v11, v5

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingY()I

    move-result v12

    aput v12, v11, v4

    .line 6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deviceWaterMarkLocation: rotation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-static {v3, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v11, v8

    move v10, v9

    :goto_0
    if-eqz p4, :cond_1

    .line 9
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/effect/renders/WaterMark;->isLTR()Z

    move-result v8

    new-array v7, v7, [I

    .line 10
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v10

    aput v10, v7, v9

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v9

    aput v9, v7, v6

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingX()I

    move-result v6

    aput v6, v7, v5

    .line 13
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingY()I

    move-result v5

    aput v5, v7, v4

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeWaterMarkLocation: rotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    move v5, v8

    goto :goto_1

    :cond_1
    move-object v4, v8

    move v5, v10

    :goto_1
    move v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v3, v11

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkRange(III[I[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static getWatermarkRange(III[I[IZ)[I
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz p2, :cond_f

    const/16 v6, 0x5a

    if-eq p2, v6, :cond_a

    const/16 v6, 0xb4

    if-eq p2, v6, :cond_5

    const/16 v6, 0x10e

    if-eq p2, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 18
    aget p2, p3, v4

    aget p5, p4, v4

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, v1, v2

    .line 19
    aget p2, p3, v5

    aput p2, v1, v3

    .line 20
    aget p2, p3, v3

    aget p5, p3, v4

    add-int/2addr p2, p5

    aget p5, p4, v3

    aget v6, p4, v4

    add-int/2addr p5, v6

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p5, p3, v4

    aget v6, p4, v4

    .line 21
    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    sub-int/2addr p2, p5

    aput p2, v1, v5

    .line 22
    aget p2, p3, v5

    sub-int p2, p1, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 23
    aget p2, p3, v4

    aput p2, v1, v2

    .line 24
    aget p2, p3, v5

    aput p2, v1, v3

    if-nez p5, :cond_2

    .line 25
    aget p2, p3, v2

    sub-int p2, p1, p2

    aget p4, p3, v5

    sub-int/2addr p2, p4

    aput p2, v1, v3

    .line 26
    :cond_2
    aget p2, p3, v3

    aput p2, v1, v5

    .line 27
    aget p2, p3, v2

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_14

    .line 28
    aget p2, p4, v4

    aput p2, v1, v2

    .line 29
    aget p2, p4, v2

    sub-int p2, p1, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v3

    if-nez p5, :cond_4

    .line 30
    aget p2, p4, v5

    aput p2, v1, v3

    .line 31
    :cond_4
    aget p2, p4, v3

    aput p2, v1, v5

    .line 32
    aget p2, p4, v2

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 33
    aget p2, p4, v5

    aput p2, v1, v2

    .line 34
    aget p2, p3, v4

    aget p5, p4, v4

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, v1, v3

    .line 35
    aget p2, p3, v5

    sub-int p2, p0, p2

    aget p5, p4, v5

    sub-int/2addr p2, p5

    aput p2, v1, v5

    .line 36
    aget p2, p3, v3

    aget p5, p3, v4

    add-int/2addr p2, p5

    aget p5, p4, v3

    aget v6, p4, v4

    add-int/2addr p5, v6

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p3, p3, v4

    aget p4, p4, v4

    .line 37
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int/2addr p2, p3

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_8

    .line 38
    aget p2, p3, v2

    sub-int p2, p0, p2

    aget p4, p3, v5

    sub-int/2addr p2, p4

    aput p2, v1, v2

    if-nez p5, :cond_7

    .line 39
    aget p2, p3, v5

    aput p2, v1, v2

    .line 40
    :cond_7
    aget p2, p3, v4

    aput p2, v1, v3

    .line 41
    aget p2, p3, v2

    aput p2, v1, v5

    .line 42
    aget p2, p3, v3

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_8
    if-eqz p4, :cond_14

    .line 43
    aget p2, p4, v5

    aput p2, v1, v2

    if-nez p5, :cond_9

    .line 44
    aget p2, p4, v2

    sub-int p2, p0, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v2

    .line 45
    :cond_9
    aget p2, p4, v4

    aput p2, v1, v3

    .line 46
    aget p2, p4, v2

    aput p2, v1, v5

    .line 47
    aget p2, p4, v3

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_a
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 48
    aget p2, p3, v3

    aget p5, p3, v4

    add-int/2addr p2, p5

    aget p5, p4, v3

    aget v6, p4, v4

    add-int/2addr p5, v6

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int p2, p0, p2

    aput p2, v1, v2

    .line 49
    aget p2, p4, v5

    aput p2, v1, v3

    .line 50
    aget p2, p3, v3

    aget p5, p3, v4

    add-int/2addr p2, p5

    aget p5, p4, v3

    aget v6, p4, v4

    add-int/2addr p5, v6

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p5, p3, v4

    aget v6, p4, v4

    .line 51
    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    sub-int/2addr p2, p5

    aput p2, v1, v5

    .line 52
    aget p2, p3, v5

    sub-int p2, p1, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_b
    if-eqz p3, :cond_d

    .line 53
    aget p2, p3, v3

    sub-int p2, p0, p2

    aget p4, p3, v4

    sub-int/2addr p2, p4

    aput p2, v1, v2

    .line 54
    aget p2, p3, v2

    sub-int p2, p1, p2

    aget p4, p3, v5

    sub-int/2addr p2, p4

    aput p2, v1, v3

    if-nez p5, :cond_c

    .line 55
    aget p2, p3, v5

    aput p2, v1, v3

    .line 56
    :cond_c
    aget p2, p3, v3

    aput p2, v1, v5

    .line 57
    aget p2, p3, v2

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_d
    if-eqz p4, :cond_14

    .line 58
    aget p2, p4, v3

    sub-int p2, p0, p2

    aget p3, p4, v4

    sub-int/2addr p2, p3

    aput p2, v1, v2

    .line 59
    aget p2, p4, v5

    aput p2, v1, v3

    if-nez p5, :cond_e

    .line 60
    aget p2, p4, v2

    sub-int p2, p1, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v3

    .line 61
    :cond_e
    aget p2, p4, v3

    aput p2, v1, v5

    .line 62
    aget p2, p4, v2

    aput p2, v1, v4

    goto/16 :goto_0

    :cond_f
    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    .line 63
    aget p2, p3, v5

    aput p2, v1, v2

    .line 64
    aget p2, p3, v3

    aget p5, p3, v4

    add-int/2addr p2, p5

    aget p5, p4, v3

    aget v6, p4, v4

    add-int/2addr p5, v6

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int p2, p1, p2

    aput p2, v1, v3

    .line 65
    aget p2, p3, v5

    sub-int p2, p0, p2

    aget p5, p4, v5

    sub-int/2addr p2, p5

    aput p2, v1, v5

    .line 66
    aget p2, p3, v3

    aget p5, p3, v4

    add-int/2addr p2, p5

    aget p5, p4, v3

    aget v6, p4, v4

    add-int/2addr p5, v6

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p3, p3, v4

    aget p4, p4, v4

    .line 67
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int/2addr p2, p3

    aput p2, v1, v4

    goto :goto_0

    :cond_10
    if-eqz p3, :cond_12

    .line 68
    aget p2, p3, v5

    aput p2, v1, v2

    if-nez p5, :cond_11

    .line 69
    aget p2, p3, v2

    sub-int p2, p0, p2

    aget p4, p3, v5

    sub-int/2addr p2, p4

    aput p2, v1, v2

    .line 70
    :cond_11
    aget p2, p3, v3

    sub-int p2, p1, p2

    aget p4, p3, v4

    sub-int/2addr p2, p4

    aput p2, v1, v3

    .line 71
    aget p2, p3, v2

    aput p2, v1, v5

    .line 72
    aget p2, p3, v3

    aput p2, v1, v4

    goto :goto_0

    :cond_12
    if-eqz p4, :cond_14

    .line 73
    aget p2, p4, v2

    sub-int p2, p0, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v2

    if-nez p5, :cond_13

    .line 74
    aget p2, p4, v5

    aput p2, v1, v2

    .line 75
    :cond_13
    aget p2, p4, v3

    sub-int p2, p1, p2

    aget p3, p4, v4

    sub-int/2addr p2, p3

    aput p2, v1, v3

    .line 76
    aget p2, p4, v2

    aput p2, v1, v5

    .line 77
    aget p2, p4, v3

    aput p2, v1, v4

    .line 78
    :cond_14
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getWatermarkRange before watermarkRange = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WaterMarkUtil"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    aget p2, v1, v5

    .line 80
    aget p4, v1, v4

    .line 81
    aget p5, v1, v5

    div-int/2addr p5, v0

    mul-int/2addr p5, v0

    aput p5, v1, v5

    .line 82
    aget p5, v1, v4

    div-int/2addr p5, v0

    mul-int/2addr p5, v0

    aput p5, v1, v4

    .line 83
    aget p5, v1, v5

    add-int/2addr p5, v0

    aput p5, v1, v5

    .line 84
    aget p5, v1, v4

    add-int/2addr p5, v0

    aput p5, v1, v4

    .line 85
    aget p5, v1, v2

    aget v0, v1, v5

    sub-int/2addr v0, p2

    div-int/2addr v0, v5

    sub-int/2addr p5, v0

    aput p5, v1, v2

    .line 86
    aget p2, v1, v3

    aget p5, v1, v4

    sub-int/2addr p5, p4

    div-int/2addr p5, v5

    sub-int/2addr p2, p5

    aput p2, v1, v3

    .line 87
    aget p2, v1, v2

    aget p4, v1, v5

    add-int/2addr p2, p4

    if-le p2, p0, :cond_15

    .line 88
    aget p2, v1, v2

    aget p4, v1, v5

    add-int/2addr p2, p4

    sub-int/2addr p2, p0

    .line 89
    aget p0, v1, v2

    sub-int/2addr p0, p2

    aput p0, v1, v2

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getWatermarkRange range[0] diff - "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_15
    aget p0, v1, v3

    aget p2, v1, v4

    add-int/2addr p0, p2

    if-le p0, p1, :cond_16

    .line 92
    aget p0, v1, v3

    aget p2, v1, v4

    add-int/2addr p0, p2

    sub-int/2addr p0, p1

    .line 93
    aget p1, v1, v3

    sub-int/2addr p1, p0

    aput p1, v1, v3

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWatermarkRange range[1] diff - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_16
    aget p0, v1, v2

    div-int/2addr p0, v5

    mul-int/2addr p0, v5

    aput p0, v1, v2

    .line 96
    aget p0, v1, v3

    div-int/2addr p0, v5

    mul-int/2addr p0, v5

    aput p0, v1, v3

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWatermarkRange after watermarkRange = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getWatermarkRatio(II)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x453b8000    # 3000.0f

    div-float/2addr p0, p1

    return p0
.end method
