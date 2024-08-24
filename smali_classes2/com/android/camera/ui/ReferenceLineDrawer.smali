.class public Lcom/android/camera/ui/ReferenceLineDrawer;
.super Landroid/view/View;
.source "ReferenceLineDrawer.java"


# static fields
.field public static final BORDER:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static reference_line_width:F

.field public static reference_line_width_end:F

.field public static reference_line_width_start:F


# instance fields
.field public isGradienterEnabled:Z

.field public mAuxiliaryLineColor:I

.field public mAuxiliaryLinePaint:Landroid/graphics/Paint;

.field public mBottomVisible:Z

.field public mColumnCount:I

.field public mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public mDeviceRotation:F

.field public mFrameColor:I

.field public mFramePaint:Landroid/graphics/Paint;

.field public mFrameSpiralColor:I

.field public mGoldenSpiralPaint:Landroid/graphics/Paint;

.field public mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

.field public mLineColor:I

.field public mLinePaint:Landroid/graphics/Paint;

.field public mRowCount:I

.field public mTopVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ReferenceLineDrawer;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const v0, 0x70ffffff

    .line 6
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const v0, 0x4dffffff    # 5.3687088E8f

    .line 7
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 v0, 0x26000000

    .line 8
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const v0, -0x66000001

    .line 9
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 11
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07073a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07073c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07073b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 30
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 31
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 32
    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 33
    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x70ffffff

    .line 34
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const p2, 0x4dffffff    # 5.3687088E8f

    .line 35
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 p2, 0x26000000

    .line 36
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const p2, -0x66000001

    .line 37
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 39
    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07073a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07073c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07073b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 16
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 17
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 18
    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x70ffffff

    .line 20
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const p2, 0x4dffffff    # 5.3687088E8f

    .line 21
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 p2, 0x26000000

    .line 22
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const p2, -0x66000001

    .line 23
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 25
    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07073a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07073c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07073b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method private GoldenSection(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    move v4, v2

    .line 2
    :goto_0
    iget v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v6, 0x2

    const v7, 0x3f1e353f    # 0.618f

    const v8, 0x3ec39581    # 0.382f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_4

    .line 3
    iget-boolean v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v5, v10, :cond_0

    if-ne v4, v2, :cond_0

    mul-float v5, v1, v8

    .line 4
    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v5, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v5, v6

    mul-float v14, v3, v8

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v5, v6

    mul-float/2addr v7, v3

    add-float v12, v7, v9

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v5, v6

    sub-float v14, v3, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v5, v10, :cond_1

    if-ne v4, v6, :cond_1

    mul-float v5, v1, v7

    .line 7
    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v5, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v5, v6

    mul-float v14, v3, v8

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v5, v6

    mul-float/2addr v7, v3

    add-float v12, v7, v9

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v5, v6

    sub-float v14, v3, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    mul-float/2addr v8, v1

    .line 9
    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v8, v5

    sub-float v14, v3, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    mul-float/2addr v7, v1

    .line 10
    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v7, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v7, v5

    sub-float v14, v3, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 11
    :cond_4
    iget-boolean v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v4, v2

    const/4 v5, 0x0

    move v10, v5

    .line 12
    :goto_2
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v10, v11, :cond_c

    if-eqz v10, :cond_5

    if-ne v10, v11, :cond_7

    :cond_5
    if-nez v10, :cond_6

    .line 13
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v11, :cond_7

    :cond_6
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v10, v11, :cond_b

    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v11, :cond_b

    .line 14
    :cond_7
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_8

    if-ne v10, v2, :cond_8

    int-to-float v11, v4

    mul-float v12, v3, v8

    .line 15
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v12, v13

    sub-float v15, v13, v9

    mul-float v16, v1, v8

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v13, v12

    sub-float v17, v13, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v14

    move v14, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v1, v7

    add-float v15, v13, v11

    .line 16
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v12, v13

    sub-float v16, v13, v9

    sub-float v17, v1, v11

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v12, v11

    sub-float v18, v12, v9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 17
    :cond_8
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_9

    if-ne v10, v6, :cond_9

    int-to-float v11, v4

    mul-float v12, v3, v7

    .line 18
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v12, v13

    mul-float v16, v1, v8

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v17, v12, v13

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v14

    move v14, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v1, v7

    add-float v15, v13, v11

    .line 19
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v16, v12, v13

    sub-float v17, v1, v11

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v18, v12, v11

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    if-ne v10, v2, :cond_a

    int-to-float v11, v4

    mul-float v12, v3, v8

    .line 20
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v12, v13

    sub-float v21, v13, v9

    sub-float v22, v1, v11

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v12, v13

    sub-float v23, v12, v9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v11

    move-object/from16 v24, v12

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_a
    if-ne v10, v6, :cond_b

    int-to-float v14, v4

    mul-float v11, v3, v7

    .line 21
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v11, v12

    sub-float v16, v1, v14

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v17, v11, v12

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_c
    move v10, v2

    .line 22
    :goto_4
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v10, v11, :cond_11

    .line 23
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_d

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_d

    if-ne v10, v2, :cond_d

    mul-float v11, v1, v8

    const/high16 v15, 0x3f800000    # 1.0f

    .line 24
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v11, v12

    mul-float v17, v3, v8

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v11

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v3, v7

    add-float v15, v12, v9

    .line 25
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v11, v12

    sub-float v17, v3, v9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 26
    :cond_d
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_e

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_e

    if-ne v10, v6, :cond_e

    mul-float v11, v1, v7

    const/high16 v15, 0x3f800000    # 1.0f

    .line 27
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v11, v12

    mul-float v17, v3, v8

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v11

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v3, v7

    add-float v15, v12, v9

    .line 28
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v11, v12

    sub-float v17, v3, v9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_e
    if-ne v10, v2, :cond_f

    mul-float v19, v1, v8

    const/high16 v20, 0x3f800000    # 1.0f

    .line 29
    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v21, v19, v11

    sub-float v22, v3, v9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v18, p1

    move-object/from16 v23, v11

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_f
    if-ne v10, v6, :cond_10

    mul-float v13, v1, v7

    const/high16 v14, 0x3f800000    # 1.0f

    .line 30
    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v15, v13, v11

    sub-float v16, v3, v9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 31
    :cond_11
    :goto_6
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v5, v10, :cond_19

    if-eqz v5, :cond_12

    if-ne v5, v10, :cond_14

    :cond_12
    if-nez v5, :cond_13

    .line 32
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v10, :cond_14

    :cond_13
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v5, v10, :cond_18

    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v10, :cond_18

    .line 33
    :cond_14
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_15

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v11, :cond_15

    if-ne v5, v2, :cond_15

    int-to-float v10, v4

    mul-float v11, v3, v8

    sub-float v18, v11, v9

    mul-float v15, v1, v8

    .line 34
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v11

    sub-float v16, v12, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v10

    move-object/from16 v17, v14

    move/from16 v14, v18

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v1, v7

    add-float v13, v12, v10

    sub-float v15, v1, v10

    .line 35
    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v11, v10

    sub-float v16, v11, v9

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 36
    :cond_15
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_16

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v11, :cond_16

    if-ne v5, v6, :cond_16

    int-to-float v10, v4

    mul-float v18, v3, v7

    mul-float v15, v1, v8

    .line 37
    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v18, v11

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v10

    move/from16 v14, v18

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v11, v1, v7

    add-float v12, v11, v10

    sub-float v14, v1, v10

    .line 38
    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v15, v18, v10

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v13, v18

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_16
    if-ne v5, v2, :cond_17

    int-to-float v10, v4

    mul-float v11, v3, v8

    sub-float v21, v11, v9

    sub-float v22, v1, v10

    .line 39
    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v11, v12

    sub-float v23, v11, v9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v10

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_17
    if-ne v5, v6, :cond_18

    int-to-float v13, v4

    mul-float v14, v3, v7

    sub-float v15, v1, v13

    .line 40
    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v14, v10

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_18
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_19
    return-void
.end method

.method public static IsGoldenSection()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "golden_section"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsGoldenSpiral()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "left_golden_spiral"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "right_golden_spiral"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private Jiugongge(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    move v4, v2

    .line 2
    :goto_0
    iget v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_2

    int-to-float v8, v4

    mul-float/2addr v8, v1

    int-to-float v9, v5

    div-float v9, v8, v9

    .line 3
    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v9, v10

    int-to-float v5, v5

    div-float/2addr v8, v5

    .line 4
    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v5, v8

    .line 5
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v10, :cond_0

    if-ne v4, v6, :cond_0

    const/high16 v13, 0x3f800000    # 1.0f

    .line 6
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v6, v6

    div-float v15, v3, v6

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v9

    move v14, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v8, v6

    div-float v8, v3, v8

    sub-int/2addr v6, v2

    int-to-float v6, v6

    mul-float/2addr v8, v6

    add-float v13, v8, v7

    sub-float v15, v3, v7

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v8, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v6, v8, :cond_1

    if-ne v4, v2, :cond_1

    const/high16 v13, 0x3f800000    # 1.0f

    .line 9
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v6, v6

    div-float v15, v3, v6

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v9

    move v14, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v8, v6

    div-float v8, v3, v8

    sub-int/2addr v6, v2

    int-to-float v6, v6

    mul-float/2addr v8, v6

    add-float v13, v8, v7

    sub-float v15, v3, v7

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v15, v3, v7

    .line 11
    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v9

    move v14, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-boolean v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v4, v2

    const/4 v5, 0x0

    move v8, v5

    .line 13
    :goto_2
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v8, v9, :cond_9

    if-eqz v8, :cond_3

    if-ne v8, v9, :cond_5

    :cond_3
    if-nez v8, :cond_4

    .line 14
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v9, :cond_5

    :cond_4
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v8, v9, :cond_8

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v9, :cond_8

    :cond_5
    int-to-float v9, v8

    mul-float/2addr v9, v3

    .line 15
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v11, v12

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 16
    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v10

    .line 17
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v12, :cond_6

    if-ne v8, v2, :cond_6

    int-to-float v10, v4

    .line 18
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v12, v12

    div-float v16, v1, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v10

    move v15, v11

    move/from16 v17, v9

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v1, v13

    sub-int/2addr v12, v2

    int-to-float v12, v12

    mul-float/2addr v13, v12

    add-float v14, v13, v10

    sub-float v16, v1, v10

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 20
    :cond_6
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v12, :cond_7

    if-ne v8, v6, :cond_7

    int-to-float v10, v4

    .line 21
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v12, v12

    div-float v16, v1, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v14, v10

    move v15, v11

    move/from16 v17, v9

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v1, v13

    sub-int/2addr v12, v2

    int-to-float v12, v12

    mul-float/2addr v13, v12

    add-float v14, v13, v10

    sub-float v16, v1, v10

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    int-to-float v14, v4

    sub-float v16, v1, v14

    .line 23
    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v15, v11

    move/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_9
    move v8, v2

    .line 24
    :goto_4
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v8, v9, :cond_c

    int-to-float v10, v8

    mul-float/2addr v10, v1

    int-to-float v11, v9

    div-float v11, v10, v11

    int-to-float v9, v9

    div-float/2addr v10, v9

    .line 25
    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v9, v10

    .line 26
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_a

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v12, :cond_a

    if-ne v8, v2, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    .line 27
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v10, v10

    div-float v16, v3, v10

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v11

    move v15, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v12, v10

    div-float v12, v3, v12

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v12, v10

    add-float v14, v12, v7

    sub-float v16, v3, v7

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 29
    :cond_a
    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v12, :cond_b

    if-ne v8, v6, :cond_b

    const/high16 v14, 0x3f800000    # 1.0f

    .line 30
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v10, v10

    div-float v16, v3, v10

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v11

    move v15, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v12, v10

    div-float v12, v3, v12

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v12, v10

    add-float v14, v12, v7

    sub-float v16, v3, v7

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_b
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v16, v3, v7

    .line 32
    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v11

    move v15, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 33
    :cond_c
    :goto_6
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v5, v7, :cond_13

    int-to-float v8, v5

    mul-float/2addr v8, v3

    int-to-float v9, v7

    div-float v9, v8, v9

    int-to-float v10, v7

    div-float/2addr v8, v10

    .line 34
    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v8, v10

    if-eqz v5, :cond_d

    if-ne v5, v7, :cond_f

    :cond_d
    if-nez v5, :cond_e

    .line 35
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v7, :cond_f

    :cond_e
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v5, v7, :cond_12

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v7, :cond_12

    .line 36
    :cond_f
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v10, :cond_10

    if-ne v5, v2, :cond_10

    int-to-float v7, v4

    .line 37
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v10

    div-float v13, v1, v10

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v7

    move v12, v9

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v1, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v7

    sub-float v13, v1, v7

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 39
    :cond_10
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v10, :cond_11

    if-ne v5, v6, :cond_11

    int-to-float v7, v4

    .line 40
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v10

    div-float v13, v1, v10

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v7

    move v12, v9

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v1, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v7

    sub-float v13, v1, v7

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_11
    int-to-float v11, v4

    sub-float v13, v1, v11

    .line 42
    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v12, v9

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_13
    return-void
.end method

.method private LeftGoldenSpiral(Landroid/graphics/Canvas;I)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v11, 0x0

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10, v11, v4}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 5
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :cond_0
    const/16 v4, 0xb4

    if-ne v1, v4, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 7
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x10e

    if-ne v1, v4, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 11
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v12, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    move v13, v11

    goto :goto_1

    :cond_3
    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v12

    move v13, v6

    :goto_1
    const/4 v6, 0x3

    const v14, 0x3f490ff9    # 0.7854f

    const v15, 0x3f31f8a1    # 0.6952f

    const v16, 0x3f439581    # 0.764f

    const v17, 0x3f271759    # 0.6527f

    const v18, 0x3d6425af    # 0.0557f

    const v19, 0x3f4c63f1    # 0.7984f

    const v20, 0x3e954c98    # 0.2916f

    const v21, 0x3f1e425b    # 0.6182f

    const v22, 0x3ef1a9fc    # 0.472f

    const v23, 0x3f92b021    # 1.146f

    const v24, 0x3e71a9fc    # 0.236f

    const v25, 0x3dff2e49    # 0.1246f

    const v26, 0x3e718fc5    # 0.2359f

    const v27, 0x3f68e8a7    # 0.9098f

    const v28, 0x3f072b02    # 0.528f

    const v29, 0x3f9e353f    # 1.236f

    const v30, 0x3f1e353f    # 0.618f

    const v31, 0x3fcf1aa0    # 1.618f

    const/high16 v32, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_5

    div-float v1, v3, v12

    float-to-double v4, v1

    const-wide v6, 0x3ff9e353f7ced917L    # 1.618

    cmpg-double v1, v4, v6

    if-gez v1, :cond_4

    const v1, 0x3ec3126f    # 0.381f

    mul-float/2addr v12, v1

    div-float v1, v3, v31

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    int-to-float v2, v2

    mul-float v2, v2, v31

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float v2, v2, v32

    mul-float/2addr v2, v1

    move/from16 v31, v1

    move v13, v12

    move v12, v2

    goto :goto_2

    :cond_4
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v12

    move v13, v1

    move/from16 v31, v12

    move v12, v11

    .line 13
    :goto_2
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v12

    sub-float v33, v11, v13

    mul-float v1, v31, v32

    add-float v34, v1, v12

    sub-float v35, v1, v13

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v33

    move/from16 v4, v34

    move/from16 v5, v35

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 14
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v12

    mul-float v30, v30, v31

    sub-float v3, v31, v30

    sub-float v36, v3, v13

    mul-float v29, v29, v31

    div-float v1, v1, v32

    sub-float v1, v29, v1

    add-float v4, v1, v12

    add-float v30, v31, v30

    sub-float v30, v30, v13

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v36

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v24, v24, v31

    .line 15
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v1, v24, v1

    add-float v2, v1, v12

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v31, v1

    add-float v4, v1, v12

    mul-float v23, v23, v31

    sub-float v23, v23, v13

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v28, v28, v31

    add-float v28, v28, v12

    mul-float v22, v22, v31

    sub-float v1, v31, v22

    sub-float v22, v1, v13

    .line 16
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v31, v1

    add-float v4, v1, v12

    sub-float v37, v31, v13

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v22

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v31

    add-float v38, v21, v12

    mul-float v20, v20, v31

    sub-float v1, v31, v20

    sub-float v20, v1, v13

    mul-float v27, v27, v31

    add-float v27, v27, v12

    const/high16 v6, 0x42b40000    # 90.0f

    .line 17
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v26, v26, v31

    sub-float v1, v31, v26

    sub-float v26, v1, v13

    mul-float v19, v19, v31

    add-float v19, v19, v12

    mul-float v18, v18, v31

    sub-float v1, v31, v18

    sub-float v18, v1, v13

    const/high16 v6, 0x43340000    # 180.0f

    .line 18
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v26

    move/from16 v4, v19

    move/from16 v5, v18

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v17, v17, v31

    add-float v17, v17, v12

    mul-float v16, v16, v31

    add-float v39, v16, v12

    mul-float v25, v25, v31

    sub-float v1, v31, v25

    sub-float v25, v1, v13

    const/high16 v6, 0x43870000    # 270.0f

    .line 19
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v4, v39

    move/from16 v5, v25

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v15, v15, v31

    add-float/2addr v15, v12

    mul-float v14, v14, v31

    sub-float/2addr v14, v13

    const v1, 0x3f5aacda    # 0.8542f

    mul-float v1, v1, v31

    sub-float v40, v1, v13

    const/4 v6, 0x0

    .line 20
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v5, v40

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3f3559b4    # 0.7084f

    mul-float v1, v1, v31

    add-float v41, v1, v12

    const v1, 0x3f4fcb92    # 0.8117f

    mul-float v1, v1, v31

    sub-float v13, v1, v13

    const v1, 0x3f403afb    # 0.7509f

    mul-float v42, v31, v1

    .line 21
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v1, v42, v1

    add-float v4, v1, v12

    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v41

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 22
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v12

    div-float v3, v1, v32

    sub-float v3, v37, v3

    add-float v4, v16, v1

    add-float/2addr v4, v12

    div-float v1, v1, v32

    sub-float v1, v37, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v21, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v12

    div-float v1, v1, v32

    sub-float v1, v21, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v4

    sub-float/2addr v1, v3

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v36

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v21, v1

    add-float/2addr v2, v12

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v32

    sub-float v4, v26, v4

    sub-float/2addr v4, v1

    div-float v5, v3, v32

    sub-float v5, v31, v5

    sub-float/2addr v5, v1

    add-float/2addr v5, v12

    div-float v3, v3, v32

    sub-float v3, v26, v3

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v3, v6

    sub-float v6, v3, v1

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v16, v2

    add-float/2addr v2, v12

    div-float v1, v1, v32

    sub-float v1, v16, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v3

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v26

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v3, v40, v2

    div-float v1, v1, v32

    sub-float v1, v40, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v12

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v33

    move/from16 v4, v34

    move/from16 v5, v35

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 28
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v12

    div-float v1, v1, v32

    sub-float v29, v29, v1

    add-float v4, v29, v12

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v36

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 29
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v24, v24, v1

    add-float v2, v24, v12

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v31, v1

    add-float v4, v1, v12

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 30
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v31, v1

    add-float v4, v1, v12

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v22

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 31
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v38

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 32
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v3, v26

    move/from16 v4, v19

    move/from16 v5, v18

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 33
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v17

    move/from16 v4, v39

    move/from16 v5, v25

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 34
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v2, v15

    move v3, v14

    move/from16 v5, v40

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    add-float v4, v42, v12

    const/high16 v6, 0x42b40000    # 90.0f

    .line 35
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v41

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 36
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v12

    div-float v3, v1, v32

    sub-float v3, v37, v3

    add-float v4, v16, v1

    add-float/2addr v4, v12

    div-float v1, v1, v32

    add-float v5, v37, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v21, v2

    add-float/2addr v2, v12

    div-float v1, v1, v32

    add-float v1, v21, v1

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v36

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v21, v21, v1

    add-float v2, v21, v12

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v32

    sub-float v4, v26, v4

    div-float v5, v3, v32

    sub-float v31, v31, v5

    sub-float v31, v31, v1

    add-float v5, v31, v12

    div-float v3, v3, v32

    add-float v6, v26, v3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v16, v2

    add-float/2addr v2, v12

    div-float v1, v1, v32

    add-float v1, v16, v1

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v26

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 40
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v40, v2

    div-float v3, v1, v32

    sub-float v16, v16, v3

    add-float v3, v16, v12

    div-float v1, v1, v32

    add-float v4, v40, v1

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_5
    if-eq v1, v4, :cond_a

    if-ne v1, v5, :cond_6

    goto/16 :goto_5

    :cond_6
    if-eqz v1, :cond_7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    :cond_7
    if-nez v1, :cond_8

    const v1, 0x3db43958    # 0.088f

    mul-float/2addr v12, v1

    move v14, v3

    move v13, v12

    goto :goto_3

    :cond_8
    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    const v1, 0x3e439581    # 0.191f

    mul-float/2addr v1, v12

    sub-float/2addr v3, v12

    div-float v3, v3, v32

    move v13, v1

    move v14, v12

    move v12, v3

    goto :goto_4

    :cond_9
    move v14, v3

    :goto_3
    move v12, v11

    :goto_4
    mul-float v15, v14, v32

    div-float v16, v15, v31

    sub-float v1, v14, v16

    add-float v17, v1, v12

    add-float v18, v16, v13

    .line 41
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v14, v1

    add-float v5, v1, v12

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 42
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    sub-float v15, v15, v16

    add-float/2addr v15, v13

    div-float v1, v14, v31

    sub-float v16, v14, v1

    mul-float v19, v16, v32

    add-float v5, v19, v12

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v15

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v29, v29, v14

    div-float v1, v29, v31

    mul-float v30, v30, v14

    sub-float v2, v1, v30

    add-float v20, v2, v13

    .line 43
    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v32

    add-float/2addr v2, v11

    add-float v3, v2, v12

    add-float v21, v30, v13

    sub-float v29, v29, v1

    add-float v5, v29, v12

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v4, v21

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3f435a86    # 0.7631f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    const v2, 0x3e149518    # 0.1451f

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    add-float v22, v1, v13

    const v1, 0x3e71c433    # 0.2361f

    mul-float/2addr v1, v14

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v23, v1, v12

    add-float v24, v16, v12

    const/4 v6, 0x0

    .line 44
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v5, v24

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    div-float v30, v30, v31

    add-float v30, v30, v13

    mul-float v28, v28, v14

    div-float v1, v28, v31

    sub-float v28, v28, v1

    add-float v28, v28, v12

    const v1, 0x3ef1c433    # 0.4722f

    mul-float/2addr v1, v14

    const v2, 0x3e154c98    # 0.1458f

    mul-float v33, v14, v2

    div-float v2, v33, v31

    add-float/2addr v1, v2

    add-float v34, v1, v13

    const/high16 v6, 0x42b40000    # 90.0f

    .line 45
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v28

    move/from16 v4, v34

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3f1e3bcd    # 0.6181f

    mul-float/2addr v1, v14

    div-float v2, v1, v31

    sub-float v35, v1, v2

    add-float v36, v35, v12

    const v1, 0x3ea710cb    # 0.3263f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    const v2, 0x3e9559b4    # 0.2917f

    mul-float/2addr v2, v14

    add-float/2addr v1, v2

    add-float v37, v1, v13

    mul-float v27, v27, v14

    div-float v1, v27, v31

    sub-float v27, v27, v1

    add-float v27, v27, v12

    const/high16 v6, 0x43340000    # 180.0f

    .line 46
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v5, v27

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3f0fec57    # 0.5622f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    const v2, 0x3d648e8a    # 0.0558f

    mul-float/2addr v2, v14

    add-float/2addr v1, v2

    add-float v38, v1, v13

    const v1, 0x3ec3a29c    # 0.3821f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    mul-float v26, v26, v14

    add-float v1, v1, v26

    add-float v26, v1, v13

    const v1, 0x3f4c56d6    # 0.7982f

    mul-float/2addr v1, v14

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v39, v1, v12

    const/high16 v6, 0x43870000    # 270.0f

    .line 47
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v4, v26

    move/from16 v5, v39

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3efc9eed    # 0.4934f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    mul-float v25, v25, v14

    add-float v1, v1, v25

    add-float v25, v1, v13

    const v1, 0x3f270a3d    # 0.6525f

    mul-float/2addr v1, v14

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v40, v1, v12

    const v1, 0x3f438866    # 0.7638f

    mul-float/2addr v1, v14

    div-float v2, v1, v31

    sub-float v41, v1, v2

    add-float v42, v41, v12

    const/4 v6, 0x0

    .line 48
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v40

    move/from16 v5, v42

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3ef1b717    # 0.4721f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    add-float v1, v1, v33

    add-float v33, v1, v13

    const v1, 0x3f31eb85    # 0.695f

    mul-float/2addr v1, v14

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v43, v1, v12

    const v1, 0x3ece7d56    # 0.4033f

    mul-float/2addr v1, v14

    div-float v1, v1, v31

    const v2, 0x3e5bc01a    # 0.2146f

    mul-float/2addr v2, v14

    add-float/2addr v1, v2

    add-float v31, v1, v13

    const/high16 v6, 0x42b40000    # 90.0f

    .line 49
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v43

    move/from16 v4, v31

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 50
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v16, v2

    add-float v3, v2, v12

    add-float v4, v26, v1

    div-float v1, v1, v32

    sub-float v1, v16, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v2

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v30, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    div-float v4, v1, v32

    add-float/2addr v4, v11

    add-float/2addr v4, v12

    div-float v1, v1, v32

    sub-float v1, v30, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v5

    sub-float v5, v1, v3

    sub-float v1, v16, v3

    add-float v6, v1, v12

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v2, v30, v1

    div-float v3, v1, v32

    sub-float v3, v35, v3

    add-float/2addr v3, v12

    div-float v1, v1, v32

    sub-float v1, v35, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v4

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 53
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v26, v2

    add-float v3, v35, v1

    add-float/2addr v3, v12

    div-float v1, v1, v32

    sub-float v1, v26, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v24

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v2, v30, v1

    div-float v3, v1, v32

    sub-float v3, v41, v3

    add-float/2addr v3, v12

    div-float v1, v1, v32

    sub-float v1, v41, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v4

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float/2addr v14, v1

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float/2addr v14, v1

    add-float v5, v14, v12

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 56
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v19, v19, v1

    add-float v5, v19, v12

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v15

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 57
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v29, v29, v1

    add-float v5, v29, v12

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v4, v21

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 58
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v5, v24

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 59
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v30

    move/from16 v3, v28

    move/from16 v4, v34

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 60
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v5, v27

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 61
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v38

    move/from16 v4, v26

    move/from16 v5, v39

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 62
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v25

    move/from16 v3, v40

    move/from16 v5, v42

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 63
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v33

    move/from16 v3, v43

    move/from16 v4, v31

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 64
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v16, v2

    add-float v3, v2, v12

    add-float v4, v26, v1

    div-float v1, v1, v32

    add-float v1, v16, v1

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v30, v2

    div-float v3, v1, v32

    add-float/2addr v3, v11

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float/2addr v3, v4

    add-float/2addr v3, v12

    div-float v5, v1, v32

    add-float v5, v30, v5

    div-float v1, v1, v32

    sub-float v16, v16, v1

    add-float v16, v16, v4

    add-float v6, v16, v12

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v30, v2

    div-float v3, v1, v32

    sub-float v3, v35, v3

    add-float/2addr v3, v12

    div-float v4, v1, v32

    sub-float v4, v21, v4

    div-float v1, v1, v32

    add-float v1, v35, v1

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v26, v2

    div-float v3, v1, v32

    add-float v35, v35, v3

    add-float v3, v35, v12

    div-float v1, v1, v32

    add-float v4, v26, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v24

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v30, v2

    div-float v3, v1, v32

    sub-float v3, v41, v3

    add-float/2addr v3, v12

    div-float v4, v1, v32

    sub-float v4, v26, v4

    div-float v1, v1, v32

    add-float v41, v41, v1

    add-float v5, v41, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 69
    :cond_a
    :goto_5
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v11

    sub-float v31, v11, v13

    mul-float v1, v12, v32

    add-float v33, v1, v11

    sub-float v34, v1, v13

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v31

    move/from16 v4, v33

    move/from16 v5, v34

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 70
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v11

    mul-float v30, v30, v12

    sub-float v3, v12, v30

    sub-float v35, v3, v13

    mul-float v29, v29, v12

    add-float v29, v29, v11

    div-float v1, v1, v32

    sub-float v4, v29, v1

    add-float v30, v12, v30

    sub-float v30, v30, v13

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v35

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v24, v24, v12

    add-float v24, v24, v11

    .line 71
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v24, v1

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v12, v1

    add-float v4, v1, v11

    mul-float v23, v23, v12

    sub-float v23, v23, v13

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v28, v28, v12

    add-float v28, v28, v11

    mul-float v22, v22, v12

    sub-float v1, v12, v22

    sub-float v22, v1, v13

    .line 72
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v12, v1

    add-float v4, v1, v11

    sub-float v36, v12, v13

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v22

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v12

    add-float v21, v21, v11

    mul-float v20, v20, v12

    sub-float v1, v12, v20

    sub-float v20, v1, v13

    mul-float v27, v27, v12

    add-float v27, v27, v11

    const/high16 v6, 0x42b40000    # 90.0f

    .line 73
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v26, v26, v12

    sub-float v1, v12, v26

    sub-float v26, v1, v13

    mul-float v19, v19, v12

    add-float v19, v19, v11

    mul-float v18, v18, v12

    sub-float v1, v12, v18

    sub-float v18, v1, v13

    const/high16 v6, 0x43340000    # 180.0f

    .line 74
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v26

    move/from16 v4, v19

    move/from16 v5, v18

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v17, v17, v12

    add-float v17, v17, v11

    mul-float v16, v16, v12

    add-float v16, v16, v11

    mul-float v25, v25, v12

    sub-float v1, v12, v25

    sub-float v25, v1, v13

    const/high16 v6, 0x43870000    # 270.0f

    .line 75
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v4, v16

    move/from16 v5, v25

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v15, v12

    add-float/2addr v15, v11

    mul-float/2addr v14, v12

    sub-float/2addr v14, v13

    const v1, 0x3f5aacda    # 0.8542f

    mul-float/2addr v1, v12

    sub-float v37, v1, v13

    const/4 v6, 0x0

    .line 76
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3f3559b4    # 0.7084f

    mul-float/2addr v1, v12

    add-float v38, v1, v11

    const v1, 0x3f4fcb92    # 0.8117f

    mul-float/2addr v1, v12

    sub-float v13, v1, v13

    const v1, 0x3f403afb    # 0.7509f

    mul-float/2addr v1, v12

    add-float v39, v1, v11

    const/high16 v6, 0x42b40000    # 90.0f

    .line 77
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v38

    move v3, v13

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 78
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    div-float v3, v1, v32

    sub-float v3, v36, v3

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v3, v4

    add-float v5, v16, v1

    div-float v1, v1, v32

    sub-float v1, v36, v1

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v6

    sub-float v6, v1, v4

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v21, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    div-float v1, v1, v32

    sub-float v1, v21, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v4

    sub-float v4, v1, v3

    sub-float v5, v36, v3

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v35

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v21, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v32

    sub-float v4, v26, v4

    sub-float/2addr v4, v1

    add-float v40, v12, v11

    div-float v5, v3, v32

    sub-float v5, v40, v5

    sub-float/2addr v5, v1

    div-float v3, v3, v32

    sub-float v3, v26, v3

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v3, v6

    sub-float v6, v3, v1

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v16, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v3, v26, v3

    div-float v1, v1, v32

    sub-float v1, v16, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v3, v37, v2

    div-float v1, v1, v32

    sub-float v1, v37, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v11

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v31

    move/from16 v4, v33

    move/from16 v5, v34

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 84
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v11

    div-float v1, v1, v32

    sub-float v4, v29, v1

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v35

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 85
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v24, v1

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v12, v1

    add-float v4, v1, v11

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 86
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float/2addr v12, v1

    add-float v4, v12, v11

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v22

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 87
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 88
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v3, v26

    move/from16 v4, v19

    move/from16 v5, v18

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 89
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v17

    move/from16 v4, v16

    move/from16 v5, v25

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 90
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v2, v15

    move v3, v14

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 91
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v38

    move v3, v13

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 92
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v11

    div-float v3, v1, v32

    sub-float v3, v36, v3

    add-float v4, v16, v1

    div-float v1, v1, v32

    add-float v5, v36, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v21, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v4, v35, v3

    div-float v1, v1, v32

    add-float v5, v21, v1

    sub-float v6, v36, v3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v21, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v32

    sub-float v4, v26, v4

    div-float v5, v3, v32

    sub-float v40, v40, v5

    sub-float v5, v40, v1

    div-float v3, v3, v32

    add-float v6, v26, v3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v16, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v3, v26, v3

    div-float v1, v1, v32

    add-float v4, v16, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v37, v2

    div-float v3, v1, v32

    sub-float v3, v16, v3

    div-float v1, v1, v32

    add-float v4, v37, v1

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private RightGoldenSpiral(Landroid/graphics/Canvas;I)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v11, 0x0

    const/16 v5, 0x5a

    if-ne v1, v5, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10, v11, v5}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 6
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :cond_0
    const/16 v5, 0xb4

    if-ne v1, v5, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 8
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x10e

    if-ne v1, v5, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 12
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_2
    :goto_0
    add-int/lit8 v1, v3, -0x1

    int-to-float v12, v1

    const/4 v1, 0x1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    const/4 v5, 0x5

    if-ne v2, v5, :cond_3

    move v13, v11

    goto :goto_1

    :cond_3
    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v12

    move v13, v6

    :goto_1
    const/4 v6, 0x3

    const v14, 0x3e9c0ebf    # 0.3048f

    const v15, 0x3f490ff9    # 0.7854f

    const v16, 0x3f6020c5    # 0.8755f

    const v17, 0x3eb1de6a    # 0.3474f

    const v18, 0x3e71a9fc    # 0.236f

    const v19, 0x3d6425af    # 0.0557f

    const v20, 0x3e718fc5    # 0.2359f

    const v21, 0x3e4e703b    # 0.2016f

    const v22, 0x3ec37b4a    # 0.3818f

    const v23, 0x3e954c98    # 0.2916f

    const v24, 0x3db8bac7    # 0.0902f

    const v25, 0x3ef1a9fc    # 0.472f

    const v26, 0x3f92b021    # 1.146f

    const v27, 0x3f439581    # 0.764f

    const v28, -0x418e5604    # -0.236f

    const v29, 0x3f5aacda    # 0.8542f

    const v30, 0x3f1e353f    # 0.618f

    const v31, 0x3fcf1aa0    # 1.618f

    const/high16 v32, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_5

    div-float v1, v4, v12

    float-to-double v1, v1

    const-wide v5, 0x3ff9e353f7ced917L    # 1.618

    cmpg-double v1, v1, v5

    if-gez v1, :cond_4

    const v1, 0x3ec3126f    # 0.381f

    mul-float/2addr v12, v1

    div-float v1, v4, v31

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    int-to-float v2, v3

    mul-float v2, v2, v31

    div-float/2addr v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float v2, v2, v32

    mul-float/2addr v2, v1

    move v13, v1

    move/from16 v31, v12

    move v12, v2

    goto :goto_2

    :cond_4
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v12

    move/from16 v31, v1

    move v13, v12

    move v12, v11

    :goto_2
    sub-float v1, v11, v13

    add-float v33, v1, v12

    sub-float v34, v11, v31

    .line 13
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v13, v1

    add-float v4, v1, v12

    mul-float v1, v13, v32

    sub-float v35, v1, v31

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v5, v35

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v28, v28, v13

    .line 14
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v28, v28, v2

    add-float v2, v28, v12

    mul-float v30, v30, v13

    sub-float v3, v13, v30

    sub-float v28, v3, v31

    div-float v1, v1, v32

    sub-float v1, v13, v1

    add-float v4, v1, v12

    add-float v30, v13, v30

    sub-float v30, v30, v31

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v28

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 15
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v12

    mul-float v27, v27, v13

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v1, v27, v1

    add-float v4, v1, v12

    mul-float v26, v26, v13

    sub-float v26, v26, v31

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 16
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v12

    mul-float v25, v25, v13

    sub-float v1, v13, v25

    sub-float v36, v1, v31

    add-float v25, v25, v12

    sub-float v37, v13, v31

    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v36

    move/from16 v4, v25

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v24, v24, v13

    add-float v24, v24, v12

    mul-float v23, v23, v13

    sub-float v1, v13, v23

    sub-float v38, v1, v31

    mul-float v22, v22, v13

    add-float v39, v22, v12

    const/4 v6, 0x0

    .line 17
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v13

    add-float v21, v21, v12

    mul-float v20, v20, v13

    sub-float v1, v13, v20

    sub-float v20, v1, v31

    mul-float v19, v19, v13

    sub-float v1, v13, v19

    sub-float v19, v1, v31

    const/high16 v6, 0x43870000    # 270.0f

    .line 18
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v13

    add-float v40, v18, v12

    mul-float v17, v17, v13

    add-float v17, v17, v12

    mul-float v16, v16, v13

    sub-float v16, v16, v31

    const/high16 v6, 0x43340000    # 180.0f

    .line 19
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v2, v40

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v15, v13

    sub-float v15, v15, v31

    mul-float/2addr v14, v13

    add-float/2addr v14, v12

    mul-float v29, v29, v13

    sub-float v29, v29, v31

    const/high16 v6, 0x42b40000    # 90.0f

    .line 20
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move v3, v15

    move v4, v14

    move/from16 v5, v29

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3e7f1412    # 0.2491f

    mul-float/2addr v1, v13

    add-float v41, v1, v12

    const v1, 0x3f4fcb92    # 0.8117f

    mul-float/2addr v1, v13

    sub-float v31, v1, v31

    add-float v23, v23, v12

    const/4 v6, 0x0

    .line 21
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v41

    move/from16 v3, v31

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 22
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v37, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v4, v2, v3

    div-float v2, v1, v32

    sub-float v2, v13, v2

    add-float v5, v2, v12

    div-float v1, v1, v32

    add-float v1, v37, v1

    add-float v6, v1, v3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v40

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v22, v2

    add-float/2addr v2, v12

    div-float v1, v1, v32

    sub-float v1, v22, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v3

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v28

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v2, v1, v11

    add-float/2addr v2, v12

    div-float v3, v1, v32

    sub-float v3, v20, v3

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v3, v4

    div-float v1, v1, v32

    sub-float v1, v20, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v5

    sub-float v5, v1, v4

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v18, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v12

    div-float v1, v1, v32

    sub-float v1, v18, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v4

    sub-float/2addr v1, v3

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v20

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v3, v29, v2

    div-float v1, v1, v32

    sub-float v1, v29, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v40

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v13, v1

    add-float v4, v1, v12

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v5, v35

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sub-float v1, v11, v18

    .line 28
    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v32

    add-float/2addr v1, v3

    add-float v3, v1, v12

    div-float v2, v2, v32

    sub-float v1, v13, v2

    add-float v4, v1, v12

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, v28

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 29
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v12

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v27, v27, v1

    add-float v4, v27, v12

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 30
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v12

    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v36

    move/from16 v4, v25

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 31
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v24

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 32
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 33
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v40

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 34
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v3, v15

    move v4, v14

    move/from16 v5, v29

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 35
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v41

    move/from16 v3, v31

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 36
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v3, v37, v2

    div-float v2, v1, v32

    sub-float/2addr v13, v2

    add-float v4, v13, v12

    div-float v1, v1, v32

    add-float v5, v37, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v22, v2

    add-float/2addr v2, v12

    div-float v1, v1, v32

    add-float v22, v22, v1

    add-float v4, v22, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v28

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    add-float/2addr v2, v12

    div-float v3, v1, v32

    sub-float v3, v20, v3

    div-float v1, v1, v32

    add-float v5, v20, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v39

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v18, v2

    add-float/2addr v2, v12

    div-float v3, v1, v32

    add-float v3, v20, v3

    div-float v1, v1, v32

    add-float v1, v18, v1

    add-float v4, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v37

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 40
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v18, v18, v2

    add-float v2, v18, v12

    div-float v3, v1, v32

    sub-float v3, v29, v3

    div-float v1, v1, v32

    add-float v4, v29, v1

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move/from16 v3, v39

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_5
    if-eq v2, v1, :cond_a

    if-ne v2, v5, :cond_6

    goto/16 :goto_5

    :cond_6
    if-eqz v2, :cond_7

    const/4 v1, 0x4

    if-ne v2, v1, :cond_b

    :cond_7
    if-nez v2, :cond_8

    const v1, 0x3db43958    # 0.088f

    mul-float v13, v12, v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x4

    if-ne v2, v1, :cond_9

    const v1, 0x3e439581    # 0.191f

    mul-float v13, v12, v1

    sub-float/2addr v4, v12

    div-float v4, v4, v32

    move v14, v13

    move v13, v12

    move v12, v4

    goto :goto_4

    :cond_9
    :goto_3
    move v12, v11

    move v14, v13

    move v13, v4

    :goto_4
    neg-float v1, v13

    div-float v1, v1, v31

    add-float v15, v1, v14

    mul-float v16, v13, v32

    div-float v17, v16, v31

    sub-float v1, v13, v17

    add-float v18, v1, v12

    div-float v19, v13, v31

    add-float v20, v19, v14

    .line 41
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v13, v1

    add-float v5, v1, v12

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v18

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    sub-float v1, v1, v16

    add-float v16, v1, v14

    .line 42
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    sub-float v19, v13, v19

    mul-float v1, v19, v32

    add-float v21, v1, v12

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v5, v21

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x40278d50    # 2.618f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    mul-float v2, v13, v31

    sub-float/2addr v1, v2

    add-float v22, v1, v14

    .line 43
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    const v1, 0x3fb0e560    # 1.382f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3ec39581    # 0.382f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v23, v1, v14

    mul-float v30, v30, v13

    div-float v1, v30, v31

    sub-float v30, v30, v1

    mul-float v30, v30, v32

    add-float v5, v30, v12

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3e71c433    # 0.2361f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v24, v1, v12

    const v1, 0x3fed566d    # 1.8542f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    mul-float v29, v29, v13

    sub-float v1, v1, v29

    add-float v25, v1, v14

    add-float v26, v19, v12

    const/high16 v6, 0x42b40000    # 90.0f

    .line 44
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x401e36e3    # 2.4721f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3fbc6dc6    # 1.4721f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v27, v1, v14

    const v1, 0x3f072b02    # 0.528f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v28, v1, v12

    sub-float v17, v17, v13

    add-float v17, v17, v14

    const/4 v6, 0x0

    .line 45
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x4012ab36

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3fa5566d    # 1.2917f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v29, v1, v14

    const v1, 0x3f1e3bcd    # 0.6181f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float v33, v1, v2

    add-float v34, v33, v12

    const v1, 0x3f68e8a7    # 0.9098f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v35, v1, v12

    const/high16 v6, 0x43870000    # 270.0f

    .line 46
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v34

    move/from16 v5, v35

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x400f1aa0    # 2.236f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3f9e353f    # 1.236f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v36, v1, v14

    const v1, 0x400393de    # 2.0559f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3f8727bb    # 1.0559f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v37, v1, v14

    const v1, 0x3f4c56d6    # 0.7982f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v38, v1, v12

    const/high16 v6, 0x43340000    # 180.0f

    .line 47
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v36

    move/from16 v4, v37

    move/from16 v5, v38

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3f270a3d    # 0.6525f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v39, v1, v12

    const v1, 0x4007fb16    # 2.1247f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3f8ff62b    # 1.1247f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v40, v1, v14

    const v1, 0x3f438866    # 0.7638f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float v41, v1, v2

    add-float v42, v41, v12

    const/high16 v6, 0x42b40000    # 90.0f

    .line 48
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, v39

    move/from16 v4, v40

    move/from16 v5, v42

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x400dbda5    # 2.2147f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3f9b7b4a    # 1.2147f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float v43, v1, v14

    const v1, 0x3f31eb85    # 0.695f

    mul-float/2addr v1, v13

    div-float v2, v1, v31

    sub-float/2addr v1, v2

    add-float v44, v1, v12

    const v1, 0x4009566d    # 2.1459f

    mul-float/2addr v1, v13

    div-float v1, v1, v31

    const v2, 0x3f92acda    # 1.1459f

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    add-float/2addr v14, v1

    const/4 v6, 0x0

    .line 49
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 50
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v19, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    add-float v4, v2, v12

    div-float v1, v1, v32

    sub-float v1, v19, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v36

    move v3, v4

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v17, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    add-float v4, v1, v11

    add-float/2addr v4, v12

    div-float v1, v1, v32

    sub-float v1, v17, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v5

    sub-float v5, v1, v3

    sub-float v1, v19, v3

    add-float v6, v1, v12

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v22, v2

    div-float v3, v1, v32

    sub-float v3, v33, v3

    add-float/2addr v3, v12

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v4, v17, v4

    div-float v1, v1, v32

    sub-float v1, v33, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v5

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 53
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v36, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v2, v3

    add-float v4, v33, v1

    add-float/2addr v4, v12

    div-float v1, v1, v32

    sub-float v1, v36, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v5

    sub-float v5, v1, v3

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v36, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v32

    sub-float v4, v41, v4

    sub-float/2addr v4, v1

    add-float/2addr v4, v12

    div-float v3, v3, v32

    sub-float v3, v41, v3

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v3, v5

    sub-float/2addr v3, v1

    add-float v5, v3, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float/2addr v13, v1

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float/2addr v13, v1

    add-float v5, v13, v12

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v18

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 56
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v5, v21

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 57
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v3, v1, v12

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v30, v30, v1

    add-float v5, v30, v12

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 58
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 59
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 60
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v29

    move/from16 v3, v34

    move/from16 v5, v35

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 61
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v36

    move/from16 v4, v37

    move/from16 v5, v38

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 62
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v3, v39

    move/from16 v4, v40

    move/from16 v5, v42

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 63
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v43

    move/from16 v3, v44

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 64
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v19, v2

    add-float v3, v2, v12

    div-float v2, v1, v32

    sub-float v4, v20, v2

    div-float v1, v1, v32

    add-float v1, v19, v1

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v17, v2

    add-float/2addr v11, v1

    add-float v3, v11, v12

    div-float v4, v1, v32

    add-float v4, v17, v4

    div-float v1, v1, v32

    sub-float v19, v19, v1

    add-float v5, v19, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v22, v2

    div-float v3, v1, v32

    sub-float v3, v33, v3

    add-float/2addr v3, v12

    div-float v4, v1, v32

    sub-float v4, v17, v4

    div-float v1, v1, v32

    add-float v1, v33, v1

    add-float v5, v1, v12

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v36, v2

    div-float v3, v1, v32

    add-float v33, v33, v3

    add-float v3, v33, v12

    div-float v1, v1, v32

    add-float v4, v36, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v36, v2

    div-float v3, v1, v32

    sub-float v3, v41, v3

    add-float/2addr v3, v12

    div-float v1, v1, v32

    add-float v41, v41, v1

    add-float v4, v41, v12

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_a
    :goto_5
    sub-float v1, v11, v12

    add-float v31, v1, v11

    sub-float v33, v11, v13

    .line 69
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v12, v1

    add-float v4, v1, v11

    mul-float v1, v12, v32

    sub-float v34, v1, v13

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v33

    move/from16 v5, v34

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v28, v28, v12

    add-float v28, v28, v11

    .line 70
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v28, v2

    mul-float v30, v30, v12

    sub-float v3, v12, v30

    sub-float v28, v3, v13

    div-float v1, v1, v32

    sub-float v1, v12, v1

    add-float v4, v1, v11

    add-float v30, v12, v30

    sub-float v30, v30, v13

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v28

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 71
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v11

    mul-float v27, v27, v12

    add-float v27, v27, v11

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v4, v27, v1

    mul-float v26, v26, v12

    sub-float v26, v26, v13

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 72
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v11

    mul-float v25, v25, v12

    sub-float v1, v12, v25

    sub-float v35, v1, v13

    add-float v25, v25, v11

    sub-float v36, v12, v13

    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v35

    move/from16 v4, v25

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v24, v24, v12

    add-float v24, v24, v11

    mul-float v23, v23, v12

    sub-float v1, v12, v23

    sub-float v37, v1, v13

    mul-float v22, v22, v12

    add-float v22, v22, v11

    const/4 v6, 0x0

    .line 73
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v37

    move/from16 v4, v22

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v12

    add-float v21, v21, v11

    mul-float v20, v20, v12

    sub-float v1, v12, v20

    sub-float v20, v1, v13

    mul-float v19, v19, v12

    sub-float v1, v12, v19

    sub-float v19, v1, v13

    const/high16 v6, 0x43870000    # 270.0f

    .line 74
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v12

    add-float v38, v18, v11

    mul-float v17, v17, v12

    add-float v17, v17, v11

    mul-float v16, v16, v12

    sub-float v16, v16, v13

    const/high16 v6, 0x43340000    # 180.0f

    .line 75
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v2, v38

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v15, v12

    sub-float/2addr v15, v13

    mul-float/2addr v14, v12

    add-float/2addr v14, v11

    mul-float v29, v29, v12

    sub-float v29, v29, v13

    const/high16 v6, 0x42b40000    # 90.0f

    .line 76
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move v3, v15

    move v4, v14

    move/from16 v5, v29

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v1, 0x3e7f1412    # 0.2491f

    mul-float/2addr v1, v12

    add-float v39, v1, v11

    const v1, 0x3f4fcb92    # 0.8117f

    mul-float/2addr v1, v12

    sub-float v13, v1, v13

    add-float v23, v23, v11

    const/4 v6, 0x0

    .line 77
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v39

    move v3, v13

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 78
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v36, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v4, v2, v3

    add-float v40, v12, v11

    div-float v2, v1, v32

    sub-float v5, v40, v2

    div-float v1, v1, v32

    sub-float v1, v36, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v2

    sub-float v6, v1, v3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v38

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v22, v2

    div-float v1, v1, v32

    sub-float v1, v22, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v4, v1, v3

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v28

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v2, v11, v1

    div-float v3, v1, v32

    sub-float v3, v20, v3

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v3, v4

    div-float v1, v1, v32

    sub-float v1, v20, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v1, v5

    sub-float v5, v1, v4

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v38, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v3, v20, v3

    div-float v1, v1, v32

    sub-float v1, v38, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v2, v38, v1

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v32

    sub-float v3, v29, v3

    div-float v1, v1, v32

    sub-float v1, v29, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v5, v1, v4

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    sub-float v1, v12, v1

    add-float v4, v1, v11

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v33

    move/from16 v5, v34

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sub-float v1, v11, v18

    add-float/2addr v1, v11

    .line 84
    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v32

    add-float/2addr v3, v1

    div-float v2, v2, v32

    sub-float/2addr v12, v2

    add-float v4, v12, v11

    const/high16 v6, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, v28

    move/from16 v5, v30

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 85
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v11

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v4, v27, v1

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 86
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v32

    add-float/2addr v1, v11

    add-float v2, v1, v11

    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v35

    move/from16 v4, v25

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 87
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v24

    move/from16 v3, v37

    move/from16 v4, v22

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43870000    # 270.0f

    .line 88
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 89
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v38

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 90
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v3, v15

    move v4, v14

    move/from16 v5, v29

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 91
    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v2, v39

    move v3, v13

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 92
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v3, v36, v2

    div-float v2, v1, v32

    sub-float v4, v40, v2

    div-float v1, v1, v32

    add-float v5, v36, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v22, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v4, v28, v3

    div-float v1, v1, v32

    add-float v5, v22, v1

    sub-float v6, v36, v3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float/2addr v2, v11

    div-float v3, v1, v32

    sub-float v3, v20, v3

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v3, v4

    sub-float v5, v22, v4

    div-float v1, v1, v32

    add-float v1, v20, v1

    sub-float v6, v1, v4

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    sub-float v2, v38, v2

    div-float v1, v1, v32

    add-float v4, v38, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v20

    move/from16 v5, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v32

    add-float v2, v38, v2

    div-float v3, v1, v32

    sub-float v3, v29, v3

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v4, v22, v4

    div-float v1, v1, v32

    add-float v5, v29, v1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private updateView(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 6
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v0, v1, :cond_3

    .line 9
    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "jiugongge"

    const-string/jumbo v2, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    const/4 v3, -0x1

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "left_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "right_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "golden_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v7

    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/ReferenceLineDrawer;->RightGoldenSpiral(Landroid/graphics/Canvas;I)V

    goto :goto_2

    .line 14
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/ReferenceLineDrawer;->LeftGoldenSpiral(Landroid/graphics/Canvas;I)V

    goto :goto_2

    .line 15
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->GoldenSection(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 16
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->Jiugongge(Landroid/graphics/Canvas;)V

    .line 17
    :goto_2
    iget-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz p1, :cond_9

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x344bfe51 -> :sswitch_3
        -0x1d02a42b -> :sswitch_2
        -0x124245fc -> :sswitch_1
        0x411c60af -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public initialize(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    .line 16
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    .line 21
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object p0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    sget p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->updateView(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    return-void
.end method
