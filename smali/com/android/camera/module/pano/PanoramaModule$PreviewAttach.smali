.class public Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;
.super Lcom/android/camera/panorama/AttachHelper;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/pano/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewAttach"
.end annotation


# instance fields
.field public mAttachPosOffsetY:I

.field public mDetector:Lcom/android/camera/panorama/PositionDetector;

.field public final mPreviewImgHeight:I

.field public final mPreviewImgWidth:I

.field public final synthetic this$0:Lcom/android/camera/module/pano/PanoramaModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/pano/PanoramaModule;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/panorama/AttachHelper;-><init>()V

    .line 2
    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    rem-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgWidth:I

    .line 4
    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgHeight:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgWidth:I

    .line 6
    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgHeight:I

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviewAttach mPreviewImgWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewImgHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/pano/PanoramaModule;->access$300(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget v3, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgWidth:I

    iget v4, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setPreviewImage(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "PreviewAttach setPreviewImage error ret:0x%08X"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    new-instance v10, Lcom/android/camera/panorama/PositionDetector;

    iget-object v4, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    .line 12
    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->getPreivewContainer()Landroid/view/ViewGroup;

    move-result-object v5

    iget v6, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/pano/PanoramaModule;->access$700(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/panorama/direction/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/panorama/direction/DirectionFunction;->getDirection()I

    move-result v7

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/pano/PanoramaModule;->access$400(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v8

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/pano/PanoramaModule;->access$500(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/panorama/PositionDetector;-><init>(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;Landroid/view/ViewGroup;IIII)V

    iput-object v10, v0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    .line 16
    iget-object v11, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v12, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v14, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mViewAngleH:F

    iget v15, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mViewAngleV:F

    const/16 v16, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/panorama/RoundDetector;->setStartPosition(IIFFZ)V

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->allocateDisplayBuffers()V

    :cond_2
    return-void
.end method

.method public static synthetic OooO00o(Landroid/graphics/Point;IIILcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    invoke-interface {p4, p0, p1}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDirectionPosition(Landroid/graphics/Point;I)V

    if-ne p3, p2, :cond_0

    const/4 p0, 0x1

    const/16 p1, 0x1770

    .line 3
    invoke-interface {p4, p0, p1}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDirectionTooFast(ZI)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-interface {p4, p0, p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDirectionTooFast(ZI)V

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->updateSmallPreviewBitmap()V

    return-void
.end method

.method private allocateDisplayBuffers()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    .line 2
    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgHeight:I

    if-eq v0, v2, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$902(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    .line 6
    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    .line 7
    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$1002(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget v1, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgWidth:I

    iget v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mPreviewImgHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$902(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v1, v0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    .line 14
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$1002(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget v2, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    mul-int/2addr v0, v2

    iget v1, v1, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mAttachPosOffsetY:I

    .line 17
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget v3, v3, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget v3, v3, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mAttachPosOffsetY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "allocateDisplayBuffers: mDispPreviewImage %s x %s mPicture %s x %s mAttachPosOffsetY %s"

    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 20
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$1102(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$1202(Lcom/android/camera/module/pano/PanoramaModule;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 22
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1200(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Paint;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    return-void
.end method

.method private checkAttachEnd([D)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/camera/panorama/PositionDetector;->detect(DD)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAttachEnd: detectResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_0

    return v4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1500(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o0;

    invoke-direct {v2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o0;-><init>(Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method private getPreviewImageRotateDegree()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x10e

    const/16 v5, 0xb4

    const/4 v6, 0x1

    if-le v2, v3, :cond_0

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    .line 4
    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-ge v0, v1, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    invoke-static {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->checkPanoDirectionStatus(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget p0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne p0, v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    invoke-static {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->checkPanoDirectionStatus(I)I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget p0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne p0, v5, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x5a

    :goto_0
    return v4
.end method

.method private updateAttachPosition(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PositionDetector;->getFrameRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAttachPosition: frameRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$600(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$600(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$600(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 12
    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$600(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 15
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 17
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "updateAttachPosition: mPreviewImage is null in UiUpdateRunnable"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 19
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;

    invoke-direct {v3, v1, v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0o;-><init>(Landroid/graphics/Point;III)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updatePreviewImage()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$300(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewImage: error ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "updatePreviewImage: mPreviewImage is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->getPreviewImageRotateDegree()I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 9
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    .line 10
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    .line 12
    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v2, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$900(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    .line 13
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 14
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-le v0, v1, :cond_3

    .line 15
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v5

    div-float/2addr v1, v0

    float-to-int v0, v1

    sub-int v1, v0, v6

    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 18
    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    invoke-direct {v6, v4, v1, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v5

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 20
    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v0, v4

    invoke-direct {v6, v4, v4, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1100(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1200(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {v0, v3, v6, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreviewImage: src "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSmallPreviewBitmap()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1600(Lcom/android/camera/module/pano/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1700(Lcom/android/camera/module/pano/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v3, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mAttachPosOffsetY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string/jumbo v3, "updatePreviewBitmap: captureDirectionDecided - %s %s"

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;

    invoke-direct {v1, p0, v2}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oO;-><init>(Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0, v4}, Lcom/android/camera/module/pano/PanoramaModule;->access$1702(Lcom/android/camera/module/pano/PanoramaModule;Z)Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO0oo;-><init>(Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->updateAttachPosition(I)V

    return-void
.end method

.method public synthetic OooO00o(ILcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$600(Lcom/android/camera/module/pano/PanoramaModule;)I

    move-result v0

    iget p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->mAttachPosOffsetY:I

    invoke-interface {p2, v0, p1, p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->onCaptureDirectionDecided(III)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/protocol/protocols/PanoramaProtocol;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1000(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public attach(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 18

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach attach start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/panorama/AttachHelper;->setImage(Lcom/android/camera/panorama/CaptureImage;)V

    .line 3
    iget-object v0, v1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$200(Lcom/android/camera/module/pano/PanoramaModule;Lcom/android/camera/panorama/CaptureImage;)V

    const/4 v0, 0x2

    new-array v14, v0, [D

    const/4 v15, 0x1

    new-array v13, v15, [I

    .line 4
    iget-object v2, v1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/pano/PanoramaModule;->access$300(Lcom/android/camera/module/pano/PanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/panorama/AttachHelper;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/16 v16, 0x0

    aget-object v3, v3, v16

    iget-object v4, v1, Lcom/android/camera/panorama/AttachHelper;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v15

    iget-object v5, v1, Lcom/android/camera/panorama/AttachHelper;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v0

    iget-object v6, v1, Lcom/android/camera/panorama/AttachHelper;->rowStride:[I

    aget v6, v6, v16

    iget-object v7, v1, Lcom/android/camera/panorama/AttachHelper;->rowStride:[I

    aget v7, v7, v15

    iget-object v8, v1, Lcom/android/camera/panorama/AttachHelper;->rowStride:[I

    aget v8, v8, v0

    iget-object v9, v1, Lcom/android/camera/panorama/AttachHelper;->pixelStride:[I

    aget v9, v9, v16

    iget-object v10, v1, Lcom/android/camera/panorama/AttachHelper;->pixelStride:[I

    aget v10, v10, v15

    iget-object v11, v1, Lcom/android/camera/panorama/AttachHelper;->pixelStride:[I

    aget v11, v11, v0

    move-object v12, v14

    move-object/from16 v17, v13

    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D[I)I

    .line 5
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewAttach status=0x%08X"

    new-array v4, v15, [Ljava/lang/Object;

    aget v5, v17, v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    new-instance v2, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;

    aget v3, v17, v16

    invoke-direct {v2, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;-><init>(I)V

    const/4 v3, 0x0

    new-array v0, v0, [I

    const/16 v4, 0x800

    aput v4, v0, v16

    const/16 v4, 0x1000

    aput v4, v0, v15

    .line 7
    invoke-virtual {v2, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO0OO([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "stop_capture_out_of_range"

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    .line 8
    invoke-virtual {v2, v0}, LOooO0O0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "stop_capture_reverse"

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 9
    iget-object v0, v1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    iput-object v3, v0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mMistatsStopMode:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (error attach status)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachHelper;->closeSrc()V

    return v16

    .line 12
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0, v15}, Lcom/android/camera/module/pano/PanoramaModule;->access$1302(Lcom/android/camera/module/pano/PanoramaModule;Z)Z

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->updatePreviewImage()V

    .line 14
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCenter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v14, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v14, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, v1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/pano/PanoramaModule;->access$1400(Lcom/android/camera/module/pano/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO;

    invoke-direct {v2, v1}, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o0OO/OooO;-><init>(Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-direct {v1, v14}, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->checkAttachEnd([D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, v1, Lcom/android/camera/module/pano/PanoramaModule$PreviewAttach;->this$0:Lcom/android/camera/module/pano/PanoramaModule;

    const-string/jumbo v2, "stop_capture_complete"

    iput-object v2, v0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mMistatsStopMode:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (attach completed)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachHelper;->closeSrc()V

    return v16

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachHelper;->closeSrc()V

    .line 20
    invoke-static {}, Lcom/android/camera/module/pano/PanoramaModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewAttach attach end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachHelper;->closeSrc()V

    .line 22
    throw v0
.end method
