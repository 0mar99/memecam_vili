.class public Lcom/android/camera/dualvideo/render/CameraItemManager;
.super Ljava/lang/Object;
.source "CameraItemManager.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "CameraItemManager"


# instance fields
.field public final mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

.field public final mRenderLocker:Ljava/lang/Object;

.field public final mRenderSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/RenderSource;",
            ">;"
        }
    .end annotation
.end field

.field public final mRenderableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/RenderSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getUIStyle()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/dualvideo/render/RegionHelper;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderSource;)Lcom/android/gallery3d/ui/ExtTexture;
    .locals 0

    .line 11
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->getTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/graphics/Rect;FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p3, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p3

    check-cast p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/RectUtil;->scaleRect(Landroid/graphics/Rect;F)V

    .line 5
    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p1, p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p3, p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-direct {p0, p1, p3, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    .line 6
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->enterOrExit(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo000;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo000;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    .line 16
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo00;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo00;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    .line 22
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p2

    iget-object p2, p2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO00o(ILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    .line 18
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    .line 19
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 20
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 21
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 2

    .line 25
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 26
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete render source:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->release()V

    :cond_1
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 29
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    .line 30
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 0

    .line 10
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 0

    .line 7
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraItemManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooooOo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooooOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 3
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooOO0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooOOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 3
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooOOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooOOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "printRenderList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraItemManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooOOo0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0, v2, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    :goto_0
    return-void
.end method

.method public static synthetic OooOOoo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public static synthetic OooOo00(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/CameraItemManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/render/CameraItemManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/dualvideo/render/CameraItemManager;)Lcom/android/camera/dualvideo/render/RegionHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    return-object p0
.end method

.method private createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v1

    invoke-direct {v0, p1, p1, v1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/FaceType;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInGridWindowFlag(Z)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->getRecordType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/FaceType;)V

    .line 5
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initCameraItemAttri(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initSelected(Lcom/android/camera/dualvideo/render/CameraItem;)V

    return-object v0
.end method

.method private deleteRedundantCameraItem(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0o;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList(Z)V

    return-void
.end method

.method private getFaceTypeByCameraTag(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/dualvideo/render/FaceType;
    .locals 1

    .line 1
    sget-object p0, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne p1, p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    :goto_0
    return-object p0
.end method

.method private getIndexBySelelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOOo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOOo;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO0O0;

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p0
.end method

.method private getRenderTypeBySelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O000;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O000;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method private getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    .line 4
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo00;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/ui/ExtTexture;

    .line 8
    monitor-exit v0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "RenderSource is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleTouch(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOoO;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getPresentZoom(Lcom/android/camera/dualvideo/render/LayoutType;)F

    move-result v3

    .line 4
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v4, v5, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOOO;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const-string v6, "front"

    const-string v7, "X"

    const-string v8, "CameraItemManager"

    if-ne v4, v5, :cond_3

    .line 7
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoO;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOo0;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p1, p0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", index from 1 to 2"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_4

    .line 11
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoOO;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p1, p0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result v1

    .line 14
    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO0;

    invoke-direct {v5, v1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOOo;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 16
    :cond_5
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0O0;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    :goto_2
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p1, p0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", index from 0 to 2"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private initCameraItemAttri(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "CameraItemManager"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "initCameraItemAttri: remote"

    .line 3
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v1, "initCameraItemAttri: front"

    .line 5
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v1, "initCameraItemAttri: back"

    .line 7
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    invoke-static {v1, v2, p0, v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    .line 11
    sget-object p0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p1, v2, p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    return-void
.end method

.method private initRenderableList()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRenderableList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooooOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooooOO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOo0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOo0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initSelectIndexFromSelectData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000oOoO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000oOoO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initSelected(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0oo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0oo;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOoo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOoo;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "CameraItemManager"

    const-string p1, "initSelected: "

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTouched(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;

    invoke-direct {v1, p1, p2}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Ooooo0o;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 2
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO0O;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO0O;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private removeRenderSource(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->deleteRedundantCameraItem(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo00o;

    invoke-direct {p2, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo00o;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private saveSelectedStatus()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0o0;

    invoke-direct {v1, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0o0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    .line 7
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getIndexBySelelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->removeRenderSource(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOOO;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOOO;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;

    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 35
    invoke-virtual {p1, p0, p0}, Lcom/android/camera/dualvideo/render/CameraItem;->setVisibilityWithAnim(ZZ)V

    const-wide/16 v0, 0xc8

    .line 36
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p0}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p0

    .line 37
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOooo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOooo;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    .line 38
    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v0, 0x0

    invoke-interface {p2, p1, p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->handleTouch(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->saveSelectedStatus()V

    const/4 p0, 0x1

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0OO;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0OO;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoo;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInGridWindowFlag(Z)V

    .line 3
    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 4
    invoke-interface {p1, v0, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectedFrame(Z)V

    .line 6
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderTypeBySelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1, v0, p0, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInGridWindowFlag(Z)V

    .line 2
    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectedFrame(Z)V

    .line 4
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1, v1, p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    .line 6
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    invoke-interface {p1, v0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    :cond_2
    return-void
.end method

.method public synthetic OooO0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 3
    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result p1

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_4

    .line 9
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void

    .line 10
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 11
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void

    .line 12
    :cond_5
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " main: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraItemManager"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_6

    .line 15
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_0

    :cond_6
    if-ne p1, v1, :cond_7

    .line 16
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_0

    .line 17
    :cond_7
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :goto_0
    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v1, 0x1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :cond_1
    return-void
.end method

.method public addCameraItem()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public deleteCameraItem(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O0o;

    invoke-direct {p2, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O0o;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-static {p2}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    .line 2
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->removeRenderSource(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V

    :goto_0
    return-void
.end method

.method public expandBottom()V
    .locals 5

    const-string v0, "CameraItemManager"

    const-string v1, "expandBottom: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    .line 4
    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    .line 7
    :cond_3
    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public expandOrShrinkTop()V
    .locals 7

    const-string v0, "CameraItemManager"

    const-string v1, "expandOrShrinkTop: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    .line 5
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 10
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 11
    :cond_5
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 12
    :pswitch_1
    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_7

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 14
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 15
    :cond_8
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 16
    :pswitch_2
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 17
    :pswitch_3
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto/16 :goto_1

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFullTypeRecordAttri(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/effect/draw_mode/DrawAttribute;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getFaceTypeByCameraTag(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-static {p0, p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    .line 5
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sget-object v3, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p1, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v0, p0, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    return-object v2
.end method

.method public getRenderableList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initRenderableList()V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getRenderableListForRecord()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/effect/draw_mode/DrawAttribute;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2
    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/render/RegionHelper;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList(Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00O0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00O0O;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000OoO;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;

    invoke-direct {v0, v3, v2, v1}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0O;-><init>(Landroid/graphics/Rect;FLjava/util/List;)V

    .line 9
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public getVisibleRenderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList(Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00O0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00O0O;

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00Oo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o00Oo0;

    .line 3
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasMiniCameraItem()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoO0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooO00o;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGridWindow()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooOO0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public printRenderList()V
    .locals 2

    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "printRenderList: start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOO0O;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public refreshSelectStatus()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    .line 4
    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    .line 5
    new-instance v4, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo00O;

    invoke-direct {v4, v3}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo00O;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOooO;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public selectItem(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->onTouched(II)Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o0000ooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o0000ooO;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooooo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooooo;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 7
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    .line 8
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->onKeyDown()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public switchGridToRecordWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->printRenderList()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getUIStyle()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initSelectIndexFromSelectData()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooooO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooooO0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchRecordToGridWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "switchRecordToGridWindow: "

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getUIStyle()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOo0o;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchTopBottom()Z
    .locals 6

    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "switchTopBottom "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OoooO00;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    .line 5
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v4, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 8
    :pswitch_1
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 9
    :pswitch_2
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 10
    :pswitch_3
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 11
    :pswitch_4
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    .line 12
    :pswitch_5
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_1
    if-nez v0, :cond_1

    .line 13
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v4, v5, :cond_3

    .line 14
    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {v3, v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v4, v5, :cond_1

    .line 16
    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {v3, v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

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

.method public updateMiniWindowLocation(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-boolean v0, v0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget v1, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget v4, v3, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setStartPosition(FF)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->updateMarginOffset(II)V

    return v2

    :cond_1
    return v1

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    if-eqz p1, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RegionHelper;->moveToEdge()V

    return v2

    :cond_3
    return v1

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 12
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v4, v5}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {v3, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iput-boolean v2, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    .line 15
    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItemManager$1;

    invoke-direct {v3, p0}, Lcom/android/camera/dualvideo/render/CameraItemManager$1;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/dualvideo/render/RegionHelper;->setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setStartPosition(FF)V

    return v2

    :cond_5
    return v1
.end method

.method public updateRenderableList(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0oO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo0oO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getVisibleRenderList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    .line 6
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2, v3, p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateRenderlistAnyway(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->refreshSelectStatus()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOoo0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTextureId()V
    .locals 2

    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "updateTextureId: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOoo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/OooOOoo;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/Oooo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
