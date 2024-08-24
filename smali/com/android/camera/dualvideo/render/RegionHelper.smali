.class public Lcom/android/camera/dualvideo/render/RegionHelper;
.super Ljava/lang/Object;
.source "RegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;
    }
.end annotation


# static fields
.field public static final FOLME_TARGET_X_TAG:Ljava/lang/String; = "xSpeed_tag"

.field public static final FOLME_TARGET_X_VALUE:Ljava/lang/String; = "xSpeed"

.field public static final FOLME_TARGET_Y_TAG:Ljava/lang/String; = "ySpeed_tag"

.field public static final FOLME_TARGET_Y_VALUE:Ljava/lang/String; = "ySpeed"

.field public static final PATCH_SEPARATOR:I

.field public static final TAG:Ljava/lang/String; = "RegionHelper"


# instance fields
.field public mIsHovering:Z

.field public mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

.field public final mPosData:Lcom/android/camera/dualvideo/render/PosData;

.field public mStartX:F

.field public mStartY:F

.field public final mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x408ba5e3    # 4.364f

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/render/PosData;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/PosData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    .line 5
    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    .line 6
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/dualvideo/render/PosData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-object p0
.end method

.method private getLayoutRect(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p1

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v2

    sub-int/2addr p1, v2

    .line 3
    div-int v2, p1, v1

    .line 4
    rem-int v3, p1, v1

    const/4 v4, 0x1

    add-int/2addr p1, v4

    if-ne v0, p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/PosData;->getDrawRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget v6, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    sub-int/2addr v0, v4

    .line 7
    div-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget v4, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v4

    sub-int/2addr v1, v6

    div-int/2addr v1, v0

    .line 9
    iget v0, p0, Landroid/graphics/Rect;->left:I

    mul-int v6, v3, v4

    add-int/2addr v0, v6

    mul-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 10
    iget v3, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    invoke-direct {p1, v0, v3, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 12
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v5, v0

    add-int/2addr v1, v3

    invoke-direct {p0, v0, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public getDrawRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/PosData;->getDrawRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/PosData;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/dualvideo/render/RegionHelper$3;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getLayoutRect(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_0
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 6
    :pswitch_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/PosData;->getMiniPose()Landroid/graphics/Point;

    move-result-object p0

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eaaa64c    # 0.3333f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget v5, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v5

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, p0

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 10
    :pswitch_2
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 11
    :pswitch_3
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 12
    :pswitch_4
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 13
    :pswitch_5
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moveToEdge()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v2

    .line 3
    sget-object v4, Lcom/android/camera/dualvideo/render/RegionHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToEdge xSpeed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ySpeed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/PosData;->getValidMiniRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {v5}, Lcom/android/camera/dualvideo/render/PosData;->getMiniPose()Landroid/graphics/Point;

    move-result-object v5

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpl-float v7, v0, v6

    const/high16 v8, -0x3b060000    # -2000.0f

    if-lez v7, :cond_0

    .line 6
    iget v0, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    .line 7
    iget v0, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 8
    iget v0, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 9
    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 10
    :cond_2
    iget v0, v4, Landroid/graphics/Rect;->left:I

    :goto_0
    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    .line 11
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    cmpl-float v2, v2, v8

    if-lez v2, :cond_5

    .line 12
    iget v2, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 13
    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 14
    :cond_4
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 15
    :cond_5
    iget v2, v4, Landroid/graphics/Rect;->top:I

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "xSpeed"

    aput-object v6, v4, v1

    .line 16
    invoke-static {v4}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const-wide/16 v6, 0x1

    .line 17
    invoke-interface {v4, v6, v7}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-string/jumbo v10, "xSpeed_tag"

    aput-object v10, v9, v1

    iget v11, v5, Landroid/graphics/Point;->x:I

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v3

    invoke-interface {v4, v9}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v10, v11, v1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v3

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v10, v8, [F

    fill-array-data v10, :array_0

    const/4 v12, -0x2

    invoke-virtual {v0, v12, v10}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v10, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v13, Lcom/android/camera/dualvideo/render/RegionHelper$1;

    invoke-direct {v13, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$1;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v13, v10, v1

    .line 20
    invoke-virtual {v0, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v11, v8

    .line 21
    invoke-interface {v4, v11}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ySpeed"

    aput-object v4, v0, v1

    .line 22
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 23
    invoke-interface {v0, v6, v7}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "ySpeed_tag"

    aput-object v6, v4, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v6, v4, v1

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-virtual {v2, v12, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/android/camera/dualvideo/render/RegionHelper$2;

    invoke-direct {v5, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$2;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v5, v3, v1

    .line 26
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v8

    .line 27
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public setDrawRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/PosData;->setDrawRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/PosData;->setValidMiniRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/PosData;->getMiniPose()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    .line 4
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-void
.end method

.method public setStartPosition(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    .line 2
    iput p2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    return-void
.end method

.method public updateMarginOffset(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/dualvideo/render/PosData;->updateMiniPos(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;->onUpdated()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mPosData:Lcom/android/camera/dualvideo/render/PosData;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/PosData;->getMiniPose()Landroid/graphics/Point;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 p2, 0x2

    new-array v0, p2, [F

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "xSpeed"

    aput-object v0, p0, v2

    .line 5
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 6
    invoke-interface {p0, v0, v1}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v4, p2, [Ljava/lang/Object;

    const-string/jumbo v5, "xSpeed_tag"

    aput-object v5, v4, v2

    iget v5, p1, Landroid/graphics/Point;->x:I

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {p0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ySpeed"

    aput-object v4, p0, v2

    .line 8
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    .line 9
    invoke-interface {p0, v0, v1}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p2, p2, [Ljava/lang/Object;

    const-string/jumbo v0, "ySpeed_tag"

    aput-object v0, p2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-interface {p0, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method
