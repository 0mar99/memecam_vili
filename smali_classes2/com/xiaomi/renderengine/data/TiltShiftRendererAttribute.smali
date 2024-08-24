.class public Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;
.super Lcom/xiaomi/renderengine/data/RendererAttribute;
.source "TiltShiftRendererAttribute.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TiltShiftRendererAttribute"


# instance fields
.field public mEffectRect:Landroid/graphics/RectF;

.field public mEndPoint:Landroid/graphics/PointF;

.field public mInvertFlag:I

.field public mRangeWidth:F

.field public mStartPoint:Landroid/graphics/PointF;

.field public mTiltShiftMaskAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/data/RendererAttribute;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mStartPoint:Landroid/graphics/PointF;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEndPoint:Landroid/graphics/PointF;

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    iput v1, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mRangeWidth:F

    .line 5
    iput v1, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mTiltShiftMaskAlpha:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TiltShiftRendererAttribute"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mInvertFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mRangeWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget p0, p0, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mTiltShiftMaskAlpha:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x6

    aput-object p0, v1, v2

    const-string p0, "[%s] mEffectRect:(%s), mStartPoint:(%s), mEndPoint:(%s), mInvertFlag:%d, mRangeWidth:%f, mTiltShiftMaskAlpha:%f"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
