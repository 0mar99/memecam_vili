.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;,
        Lcom/android/camera/fragment/BaseFragmentDelegate$ContainerType;
    }
.end annotation


# static fields
.field public static final BEAUTY_PANEL:I = 0x5

.field public static final BOTTOM_BAR:I = 0x4

.field public static final DUAL_CAMERA:I = 0x8

.field public static final FRAGMENT_AI_WATER_MARK:I = 0xff2

.field public static final FRAGMENT_AMBILIGHT:I = 0xfffff0

.field public static final FRAGMENT_ASD_WATERMARK:I = 0xffffc

.field public static final FRAGMENT_AUTO_ZOOM:I = 0xff1

.field public static final FRAGMENT_BASE_WATERMARK:I = 0xffff6

.field public static final FRAGMENT_BEAUTY:I = 0xfb

.field public static final FRAGMENT_BLANK_MILIVE:I = 0xffa

.field public static final FRAGMENT_BOTTOM_ACTION:I = 0xf1

.field public static final FRAGMENT_BOTTOM_INTENT_DONE:I = 0xff3

.field public static final FRAGMENT_BOTTOM_MENU:I = 0xf5

.field public static final FRAGMENT_BOTTOM_POPUP_TIPS:I = 0xfff9

.field public static final FRAGMENT_CITY_WATERMARK:I = 0xffffd

.field public static final FRAGMENT_CLONE_GALLERY:I = 0xffff4

.field public static final FRAGMENT_CLONE_PROCESS:I = 0xffff3

.field public static final FRAGMENT_CLONE_USE_GUIDE:I = 0xffff5

.field public static final FRAGMENT_CUSTOM_TINT:I = 0xfff8

.field public static final FRAGMENT_CV_LENS:I = 0xfff

.field public static final FRAGMENT_DISPATCH:I = 0xd

.field public static final FRAGMENT_DOC_VIEW:I = 0xff9

.field public static final FRAGMENT_DOLLY_ZOOM_PROCESS:I = 0xfffffb

.field public static final FRAGMENT_DOLLY_ZOOM_USE_GUIDE:I = 0xfffffc

.field public static final FRAGMENT_DUAL_CAMERA_ADJUST:I = 0xff4

.field public static final FRAGMENT_DUAL_CAMERA_BOKEH_ADJUST:I = 0xffb

.field public static final FRAGMENT_FAST_MOTION:I = 0xfffff1

.field public static final FRAGMENT_FAST_MOTION_EXTRA:I = 0xfffff2

.field public static final FRAGMENT_FAST_MOTION_PRO:I = 0xfffff6

.field public static final FRAGMENT_FESTIVAL_WATERMARK:I = 0xffffb

.field public static final FRAGMENT_FILM_DREAM_PROCESS:I = 0xfffff5

.field public static final FRAGMENT_FILM_GALLERY:I = 0xfffff3

.field public static final FRAGMENT_FILM_PREVIEW:I = 0xfffff4

.field public static final FRAGMENT_FILM_TIME_FREEZE:I = 0xfffff9

.field public static final FRAGMENT_FILTER:I = 0xfa

.field public static final FRAGMENT_GENERAL_WATERMARK:I = 0xffff7

.field public static final FRAGMENT_GIF:I = 0xfff4

.field public static final FRAGMENT_HALO:I = 0xf8

.field public static final FRAGMENT_ID_CARD:I = 0xffff0

.field public static final FRAGMENT_INVALID:I = 0xf0

.field public static final FRAGMENT_LIGHTING:I = 0xff7

.field public static final FRAGMENT_LIGHTING_VIEW:I = 0xff8

.field public static final FRAGMENT_LIVE_REVIEW:I = 0xffff1

.field public static final FRAGMENT_MAIN_CONTENT:I = 0xf3

.field public static final FRAGMENT_MANUALLY_EXTRA:I = 0xfe

.field public static final FRAGMENT_MANUAL_PICTURE_STYLE:I = 0xfffffe

.field public static final FRAGMENT_MASTER_FILTER:I = 0xfffff7

.field public static final FRAGMENT_MENU_AI_WATER_MARK:I = 0xe1

.field public static final FRAGMENT_MENU_BEAUTY_SKIN_COLOR:I = 0xe6

.field public static final FRAGMENT_MENU_CV_LENS:I = 0xeb

.field public static final FRAGMENT_MENU_FAST_MOTION:I = 0xe4

.field public static final FRAGMENT_MENU_FAST_MOTION_PRO:I = 0xe5

.field public static final FRAGMENT_MENU_LIVE_SPEED:I = 0xe8

.field public static final FRAGMENT_MENU_MASTER_FILTER:I = 0xe2

.field public static final FRAGMENT_MENU_MIMOJI:I = 0xea

.field public static final FRAGMENT_MENU_PIC_STYLE:I = 0xe3

.field public static final FRAGMENT_MENU_PORTRAIT_LIGHTING:I = 0xe9

.field public static final FRAGMENT_MENU_SHINE:I = 0xe0

.field public static final FRAGMENT_MENU_VIDEO_SKY:I = 0xe7

.field public static final FRAGMENT_MIMOJI_EDIT:I = 0xfff1

.field public static final FRAGMENT_MIMOJI_EMOTICON:I = 0xfff2

.field public static final FRAGMENT_MIMOJI_LIST:I = 0xfff0

.field public static final FRAGMENT_MIMOJI_SCREEN:I = 0xfff3

.field public static final FRAGMENT_MODES_EDIT:I = 0xfff7

.field public static final FRAGMENT_MODES_MORE_NORMAL:I = 0xfff5

.field public static final FRAGMENT_MODES_MORE_POPUP:I = 0xfff6

.field public static final FRAGMENT_MODE_SELECT:I = 0xf2

.field public static final FRAGMENT_MODULE_CONTENT:I = 0xffff2

.field public static final FRAGMENT_PANORAMA:I = 0xff0

.field public static final FRAGMENT_POPUP_LIVE_SPEED:I = 0xffd

.field public static final FRAGMENT_POPUP_MANUALLY:I = 0xf7

.field public static final FRAGMENT_PRESENTATION_DISPLAY:I = 0xffffff1

.field public static final FRAGMENT_REFERENCE_LINE:I = 0xffffff2

.field public static final FRAGMENT_SCREEN_LIGHT:I = 0xff6

.field public static final FRAGMENT_SILHOUETTE_WATERMARK:I = 0xffff9

.field public static final FRAGMENT_SLOW_MOTION:I = 0xffffff3

.field public static final FRAGMENT_SLOW_SHUTTER_USE_GUIDE:I = 0xfffffd

.field public static final FRAGMENT_SPOTS_WATERMARK:I = 0xffff8

.field public static final FRAGMENT_SUBTITLE:I = 0xfffe

.field public static final FRAGMENT_TEXT_WATERMARK:I = 0xffffa

.field public static final FRAGMENT_TIME_FREEZE_USE_GUIDE:I = 0xfffffa

.field public static final FRAGMENT_TOP_ALERT:I = 0xfd

.field public static final FRAGMENT_TOP_CONFIG:I = 0xf4

.field public static final FRAGMENT_VIDEO_REVIEW:I = 0xffc

.field public static final FRAGMENT_VIDEO_SKY_LIST:I = 0xffffff

.field public static final FRAGMENT_VIDEO_SKY_PROCESS:I = 0xffffff0

.field public static final FRAGMENT_VV:I = 0xfffa

.field public static final FRAGMENT_VV_FEATURE:I = 0xfffff8

.field public static final FRAGMENT_VV_GALLERY:I = 0xfffb

.field public static final FRAGMENT_VV_PREVIEW:I = 0xfffc

.field public static final FRAGMENT_VV_PROCESS:I = 0xfffd

.field public static final FRAGMENT_WATERMARK:I = 0xffffe

.field public static final FRAGMENT_WIDESELFIE:I = 0xffe

.field public static final FRAGMENT_ZOOM_VIEW:I = 0xf6

.field public static final MAIN_CONTENT:I = 0x2

.field public static final MIMOJI_EMOTICON:I = 0x64

.field public static final MIMOJI_GIF:I = 0x65

.field public static final MODE_SELECTOR:I = 0x3

.field public static final MODULE_CONTENT_HIGHER_LAYER:I = 0x16

.field public static final MODULE_CONTENT_LOWER_LAYER:I = 0x14

.field public static final MODULE_CONTENT_MID_LAYER:I = 0x15

.field public static final POPUP_TIPS:I = 0x7

.field public static final POST_VIEW:I = 0x6

.field public static final TAG:Ljava/lang/String; = "BaseFragmentDelegate"

.field public static final TOP_BAR:I = 0x1


# instance fields
.field public mActivity:Lcom/android/camera/Camera;

.field public mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

.field public volatile mCurrentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mFragmentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLastFragmentAlias:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field public mOriginalFragments:Landroid/util/SparseIntArray;

.field public mStoreFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 3
    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->asyncInflaterCallback(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;ILandroid/view/View;)V

    return-void
.end method

.method private addCurrentFragments(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    if-eqz p1, :cond_1e

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    const-string v1, "applyUpdateSet mCurrentFragments is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 8
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v4

    .line 9
    iget v11, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 10
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    const/16 v1, 0xf0

    if-ne v11, v1, :cond_3

    .line 11
    sget-object v1, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyUpdateSet, lastFragmentInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pendingFragmentInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pendingSubFragmentInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_3
    iget v2, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 13
    :pswitch_0
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0, v11}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 14
    invoke-direct {v6, v7, v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 16
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 17
    :cond_4
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    .line 18
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    .line 19
    invoke-direct {v6, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 21
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 22
    :pswitch_1
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 23
    iget v15, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentIndex:I

    if-eqz v14, :cond_2

    .line 24
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-gt v15, v0, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_1
    if-ltz v0, :cond_7

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    iget-object v2, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2, v1}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 29
    invoke-direct {v6, v7, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v1

    .line 30
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v8, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 v1, 0x0

    .line 32
    iget-object v3, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    move v2, v11

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 33
    invoke-direct {v6, v8, v11, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    .line 34
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 35
    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_8

    .line 37
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    :cond_8
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 39
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/BaseFragment;

    .line 40
    iget v2, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    iget-object v2, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    goto :goto_3

    .line 42
    :cond_9
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v12, [I

    aput v15, v2, v13

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 43
    :pswitch_2
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0, v4}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 44
    invoke-direct {v6, v7, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 46
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    :cond_a
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    .line 48
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    .line 49
    invoke-direct {v6, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 51
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_0

    .line 52
    :pswitch_3
    invoke-direct {v6, v7, v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 53
    invoke-virtual {v8, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_b
    if-eq v0, v1, :cond_c

    move v2, v0

    goto :goto_4

    :cond_c
    move v2, v11

    :goto_4
    const/4 v1, 0x0

    .line 54
    iget-object v3, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 55
    invoke-direct {v6, v8, v11, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    .line 56
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 57
    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 59
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 60
    :pswitch_4
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_10

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v13

    .line 62
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v11, :cond_d

    goto :goto_7

    .line 64
    :cond_d
    iget-object v3, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v2}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 65
    invoke-direct {v6, v7, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_f

    if-eq v2, v4, :cond_e

    .line 66
    invoke-virtual {v3, v12}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_6

    .line 67
    :cond_e
    invoke-virtual {v3, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 68
    :goto_6
    invoke-virtual {v8, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_f
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 69
    :cond_10
    invoke-direct {v6, v7, v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_11

    .line 70
    sget-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "popup null, create new"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 71
    iget-object v3, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    move v2, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 72
    invoke-direct {v6, v8, v11, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    .line 73
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 74
    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_8

    .line 75
    :cond_11
    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 76
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 77
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    :goto_8
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 79
    :pswitch_5
    iget-object v2, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v3, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 80
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v6, v7, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 82
    invoke-virtual {v3, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 83
    invoke-virtual {v8, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    .line 84
    :cond_13
    invoke-direct {v6, v7, v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 85
    invoke-virtual {v8, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_14
    if-eq v0, v1, :cond_15

    move v2, v0

    goto :goto_a

    :cond_15
    move v2, v11

    :goto_a
    const/4 v1, 0x0

    .line 86
    iget-object v3, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 87
    invoke-direct {v6, v8, v11, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    .line 88
    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 90
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 91
    :pswitch_6
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v2, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v6, v7, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 94
    invoke-virtual {v3, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 95
    iget v4, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v6, v4, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->storeFragmentInfo(II)V

    .line 96
    invoke-virtual {v8, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 97
    :cond_17
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v3, v13, [I

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 98
    :pswitch_7
    invoke-direct {v6, v7, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 99
    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 100
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 101
    :cond_18
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 102
    :pswitch_8
    invoke-direct {v6, v7, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 103
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 104
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 105
    :cond_19
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v3, v13, [I

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 106
    :pswitch_9
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0, v4}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 107
    invoke-direct {v6, v7, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 108
    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 109
    invoke-virtual {v8, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 110
    :cond_1a
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 111
    :pswitch_a
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 113
    iget-object v2, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v7, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 115
    invoke-virtual {v1, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 116
    invoke-virtual {v8, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_c

    .line 117
    :cond_1c
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 118
    :pswitch_b
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v4

    .line 119
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0, v4}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    const/4 v1, 0x0

    .line 120
    iget-object v3, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    move v2, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 121
    invoke-direct {v6, v8, v11, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    .line 122
    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 123
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 124
    iget v0, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v1, v10, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v2, v13, [I

    invoke-virtual {v6, v0, v11, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    .line 125
    :cond_1d
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 126
    sget-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentFragments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->dumpCur()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "need operation info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private asyncInflaterCallback(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;ILandroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p4}, Lcom/android/camera/fragment/BaseFragment;->setAsyncInflaterView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 3
    invoke-static {p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p4

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    iget-object p4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v0

    invoke-virtual {p4, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    iget-object p4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v0

    invoke-virtual {p4, v0, p2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result p2

    invoke-direct {p0, p3, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->addCurrentFragments(II)V

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p3, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0Oo;

    invoke-direct {p3, p0, p2}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0Oo;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;I)V

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private checkOperation(ILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    sget-object v1, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOperation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getContainerTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", operations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentFragments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->dumpCur()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return p0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return p0

    :cond_1
    const/16 v1, 0xf0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v1, v1, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    return p0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    move v2, p0

    move v3, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v5, v5, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    return v1

    :cond_5
    move v1, p0

    move v2, v1

    .line 9
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v4, v4, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v1, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v1, p0

    :goto_2
    if-ge v1, v2, :cond_8

    .line 11
    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-le v0, v2, :cond_9

    .line 13
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    return p0
.end method

.method private constructBottomMenuFragment(I)Lcom/android/camera/fragment/BaseFragment;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getMenuItemCreator(Landroid/content/Context;)Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

    move-result-object p0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningCvLens()Lcom/android/camera/data/data/runing/ComponentRunningCvLens;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 6
    new-instance p0, Lcom/android/camera/fragment/bottom/MimojiMenu;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 8
    new-instance p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 10
    new-instance p0, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    .line 11
    :pswitch_4
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_5
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    const p0, 0x7f1203ab

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_6
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_7
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getItems()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;

    .line 23
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 24
    :pswitch_8
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningPictureStyle()Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto :goto_0

    .line 27
    :pswitch_9
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto :goto_0

    .line 30
    :pswitch_a
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 31
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    .line 34
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 35
    :pswitch_b
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 36
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    .line 39
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructBottomMenuFragment(I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    packed-switch p2, :pswitch_data_6

    packed-switch p2, :pswitch_data_7

    packed-switch p2, :pswitch_data_8

    if-eqz p3, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_0

    .line 3
    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;-><init>()V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    new-instance v0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-direct {v0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;-><init>()V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;-><init>()V

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getCloneGalleryItemFragment()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_0

    .line 14
    :pswitch_6
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;-><init>()V

    .line 15
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_7
    new-instance v0, Lcom/android/camera/fragment/FragmentModuleContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentModuleContent;-><init>()V

    goto/16 :goto_0

    .line 17
    :pswitch_8
    new-instance v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;-><init>()V

    .line 18
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_9
    new-instance v0, Lcom/android/camera/fragment/idcard/FragmentIDCard;

    invoke-direct {v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;-><init>()V

    goto/16 :goto_0

    .line 20
    :pswitch_a
    new-instance v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;-><init>()V

    .line 21
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_b
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;-><init>()V

    goto/16 :goto_0

    .line 23
    :pswitch_c
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    goto/16 :goto_0

    .line 24
    :pswitch_d
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVV;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVV;-><init>()V

    goto/16 :goto_0

    .line 25
    :pswitch_e
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getPanelEntranceFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 26
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_f
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMoreModeEditFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    goto/16 :goto_0

    .line 28
    :pswitch_10
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMoreModePopupFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 29
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 30
    :pswitch_11
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMoreModeNormalFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 31
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 32
    :pswitch_12
    new-instance v0, Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-direct {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;-><init>()V

    goto/16 :goto_0

    .line 33
    :pswitch_13
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;-><init>()V

    goto/16 :goto_0

    .line 34
    :pswitch_14
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oooo()I

    move-result p2

    const/4 p3, 0x2

    if-le p2, p3, :cond_0

    .line 35
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;-><init>()V

    goto/16 :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;-><init>()V

    goto/16 :goto_0

    .line 37
    :pswitch_15
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 38
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getCvLensFragment()Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_0

    .line 40
    :pswitch_16
    new-instance v0, Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentWideSelfie;-><init>()V

    .line 41
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 42
    :pswitch_17
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 43
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getLiveSpeedFragment()Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 45
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 46
    :pswitch_18
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto/16 :goto_0

    .line 47
    :pswitch_19
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto/16 :goto_0

    .line 48
    :pswitch_1a
    new-instance v0, Lcom/android/camera/fragment/FragmentAIWatermark;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentAIWatermark;-><init>()V

    .line 49
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 50
    :pswitch_1b
    new-instance v0, Lcom/android/camera/fragment/FragmentAutoZoom;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentAutoZoom;-><init>()V

    goto/16 :goto_0

    .line 51
    :pswitch_1c
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto/16 :goto_0

    .line 52
    :pswitch_1d
    new-instance v0, Lcom/android/camera/fragment/FragmentHalo;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentHalo;-><init>()V

    goto/16 :goto_0

    .line 53
    :pswitch_1e
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    .line 54
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 55
    :pswitch_1f
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getZoomViewFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;

    .line 56
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 57
    :pswitch_20
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto/16 :goto_0

    .line 58
    :pswitch_21
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto/16 :goto_0

    .line 59
    :pswitch_22
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getModeSelectFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_0

    .line 60
    :pswitch_23
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getBottomActionFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    goto/16 :goto_0

    :pswitch_24
    const/4 p0, 0x0

    return-object p0

    .line 61
    :sswitch_0
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;-><init>()V

    goto/16 :goto_0

    .line 62
    :sswitch_1
    new-instance v0, Lcom/android/camera/fragment/FragmentReferenceLine;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentReferenceLine;-><init>()V

    goto/16 :goto_0

    .line 63
    :sswitch_2
    new-instance v0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;-><init>()V

    .line 64
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 65
    :sswitch_3
    new-instance v0, Lcom/android/camera/fragment/FragmentVideoSky;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentVideoSky;-><init>()V

    .line 66
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 67
    :sswitch_4
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 68
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getManualPictureStyleFragment()Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 70
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 71
    :sswitch_5
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;-><init>()V

    .line 72
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 73
    :sswitch_6
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;-><init>()V

    .line 74
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 75
    :sswitch_7
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;-><init>()V

    .line 76
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 77
    :sswitch_8
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;-><init>()V

    .line 78
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 79
    :sswitch_9
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getTimeFreezeFragment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 80
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 81
    :sswitch_a
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 82
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getVVFeatureFragment()Ljava/lang/String;

    move-result-object p3

    .line 83
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_0

    .line 84
    :sswitch_b
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 85
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMasterFilterFragment()Ljava/lang/String;

    move-result-object p3

    .line 86
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 87
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 88
    :sswitch_c
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;-><init>()V

    .line 89
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 90
    :sswitch_d
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;-><init>()V

    .line 91
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 92
    :sswitch_e
    new-instance v0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    invoke-direct {v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;-><init>()V

    .line 93
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 94
    :sswitch_f
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    .line 95
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 96
    :sswitch_10
    new-instance v0, Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;-><init>()V

    .line 97
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 98
    :sswitch_11
    new-instance v0, Lcom/android/camera/fragment/live/FragmentBlankLive;

    invoke-direct {v0}, Lcom/android/camera/fragment/live/FragmentBlankLive;-><init>()V

    goto :goto_0

    .line 99
    :sswitch_12
    new-instance v0, Lcom/android/camera/fragment/FragmentDocView;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentDocView;-><init>()V

    goto :goto_0

    .line 100
    :sswitch_13
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLightView;

    invoke-direct {v0}, Lcom/android/camera/fragment/lighting/FragmentLightView;-><init>()V

    goto :goto_0

    .line 101
    :sswitch_14
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLighting;

    invoke-direct {v0}, Lcom/android/camera/fragment/lighting/FragmentLighting;-><init>()V

    .line 102
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 103
    :sswitch_15
    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;-><init>()V

    goto :goto_0

    .line 104
    :sswitch_16
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;-><init>()V

    .line 105
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 106
    :sswitch_17
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 107
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getBeautyFragment()Ljava/lang/String;

    move-result-object p3

    .line 108
    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    .line 109
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 110
    :sswitch_18
    new-instance v0, Lcom/android/camera/fragment/DispatchFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/DispatchFragment;-><init>()V

    .line 111
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragment;->setAppController(Lcom/android/camera/AppController;)V

    .line 112
    invoke-virtual {v0, p4}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 113
    invoke-virtual {v0, p5}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 p0, p1, 0x1

    .line 115
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_18
        0xfb -> :sswitch_17
        0xfe -> :sswitch_16
        0xff6 -> :sswitch_15
        0xff7 -> :sswitch_14
        0xff8 -> :sswitch_13
        0xff9 -> :sswitch_12
        0xffa -> :sswitch_11
        0xffb -> :sswitch_10
        0xfff0 -> :sswitch_f
        0xffffe -> :sswitch_e
        0xfffff5 -> :sswitch_d
        0xfffff6 -> :sswitch_c
        0xfffff7 -> :sswitch_b
        0xfffff8 -> :sswitch_a
        0xfffff9 -> :sswitch_9
        0xfffffa -> :sswitch_8
        0xfffffb -> :sswitch_7
        0xfffffc -> :sswitch_6
        0xfffffd -> :sswitch_5
        0xfffffe -> :sswitch_4
        0xffffff -> :sswitch_3
        0xffffff0 -> :sswitch_2
        0xffffff2 -> :sswitch_1
        0xffffff3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf6
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xff0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xffd
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfff2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xfff9
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xfffd
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xffff0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xfffff0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpCur()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "[]"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v2, 0x5d

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x2c

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 p0, 0x7d

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContainerTypeName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "MODULE_CONTENT_HIGHER_LAYER"

    return-object p0

    :pswitch_1
    const-string p0, "MODULE_CONTENT_MID_LAYER"

    return-object p0

    :pswitch_2
    const-string p0, "MODULE_CONTENT_LOWER_LAYER"

    return-object p0

    :pswitch_3
    const-string p0, "DUAL_CAMERA"

    return-object p0

    :pswitch_4
    const-string p0, "POPUP_TIPS"

    return-object p0

    :pswitch_5
    const-string p0, "POST_VIEW"

    return-object p0

    :pswitch_6
    const-string p0, "BEAUTY_PANEL"

    return-object p0

    :pswitch_7
    const-string p0, "BOTTOM_BAR"

    return-object p0

    :pswitch_8
    const-string p0, "MODE_SELECTOR"

    return-object p0

    :pswitch_9
    const-string p0, "MAIN_CONTENT"

    return-object p0

    :pswitch_a
    const-string p0, "TOP_BAR"

    return-object p0

    :cond_0
    const-string p0, "MIMOJI_GIF"

    return-object p0

    :cond_1
    const-string p0, "MIMOJI_EMOTICON"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    check-cast p1, Lcom/android/camera/fragment/BaseFragment;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getViewContainer(I)I
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid view container type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x7f0a02d2

    goto :goto_0

    :pswitch_1
    const p0, 0x7f0a02d4

    goto :goto_0

    :pswitch_2
    const p0, 0x7f0a02d3

    goto :goto_0

    :pswitch_3
    const p0, 0x7f0a00a7

    goto :goto_0

    :pswitch_4
    const p0, 0x7f0a00a8

    goto :goto_0

    :pswitch_5
    const p0, 0x7f0a01c2

    goto :goto_0

    :pswitch_6
    const p0, 0x7f0a00a0

    goto :goto_0

    :pswitch_7
    const p0, 0x7f0a009f

    goto :goto_0

    :pswitch_8
    const p0, 0x7f0a02cc

    goto :goto_0

    :pswitch_9
    const p0, 0x7f0a0274

    goto :goto_0

    :pswitch_a
    const p0, 0x7f0a0276

    goto :goto_0

    :cond_0
    const p0, 0x7f0a01b9

    goto :goto_0

    :cond_1
    const p0, 0x7f0a01b8

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private popStoredFragment(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private storeFragmentInfo(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public batchFragmentRequest(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyUpdateSet s.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 7
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->checkOperation(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 11
    sget-object v2, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyUpdateSet s.2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 13
    :cond_6
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    return-void
.end method

.method public varargs delegateEvent(I[I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xf2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v2, :cond_25

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq p1, v4, :cond_23

    const/4 v4, 0x0

    if-eq p1, v3, :cond_21

    const/4 v6, 0x4

    if-eq p1, v6, :cond_1f

    if-eq p1, v5, :cond_1d

    const/4 p2, 0x7

    const v2, 0xfffa

    const/4 v7, 0x6

    if-eq p1, p2, :cond_1b

    const/16 p2, 0x17

    if-eq p1, p2, :cond_19

    const/16 p2, 0x1e

    if-eq p1, p2, :cond_17

    const/16 p2, 0xa

    if-eq p1, p2, :cond_15

    const/16 p2, 0xb

    if-eq p1, p2, :cond_13

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_0

    .line 3
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xfe

    new-array v1, v4, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff2

    if-eq p1, p2, :cond_1

    .line 6
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff2

    new-array v1, v4, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffff

    if-eq p1, p2, :cond_2

    .line 9
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffffff

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffe

    if-eq p1, p2, :cond_3

    .line 12
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffe

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffc

    if-eq p1, p2, :cond_4

    .line 15
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffc

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :cond_4
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffb

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffa

    if-eq p1, p2, :cond_5

    .line 18
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffa

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_5
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff9

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :pswitch_6
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff7

    if-eq p1, p2, :cond_6

    .line 21
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff7

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22
    :cond_6
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :pswitch_7
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff6

    if-eq p1, p2, :cond_7

    .line 24
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff6

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :cond_7
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffd

    if-eq p1, p2, :cond_8

    .line 27
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffd

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff1

    if-eq p1, p2, :cond_9

    .line 30
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 31
    :cond_9
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :pswitch_a
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xff7

    if-eq p1, p2, :cond_a

    .line 33
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xff7

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_a
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35
    :pswitch_b
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffe

    if-eq p1, p2, :cond_b

    .line 36
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_b
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    const/16 p1, 0x65

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p2

    const v1, 0xfff4

    if-eq p2, v1, :cond_c

    .line 39
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_c
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    const/16 p1, 0x64

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p2

    const v1, 0xfff2

    if-eq p2, v1, :cond_d

    .line 42
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :cond_d
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :pswitch_e
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v2, :cond_e

    const/16 p1, 0x8

    .line 45
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hide()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffd

    new-array v1, v4, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :cond_e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo0()Z

    move-result p1

    if-nez p1, :cond_f

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_10

    :cond_f
    const/16 p1, 0x8

    .line 48
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_10
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xff6

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :pswitch_f
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfff0

    if-eq p1, p2, :cond_11

    .line 51
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 52
    :cond_11
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :pswitch_10
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xffd

    if-eq p1, p2, :cond_12

    .line 54
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :cond_12
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 56
    :cond_13
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffff1

    if-eq p1, p2, :cond_14

    .line 57
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_14
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :cond_15
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xffa

    if-eq p1, p2, :cond_16

    .line 60
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :cond_16
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_17
    const/16 p1, 0x16

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p2

    const v1, 0xfff5

    if-eq p2, v1, :cond_18

    .line 63
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_18
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 65
    :cond_19
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffff5

    if-eq p1, p2, :cond_1a

    .line 66
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :cond_1a
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffff3

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_1b
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-ne p1, v2, :cond_1c

    const/16 p1, 0xf

    new-array p2, v4, [I

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I[I)V

    return-void

    :cond_1c
    const/16 p2, 0xf1

    if-eq p1, p2, :cond_26

    .line 70
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xf1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_1d
    aget p1, p2, v4

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->isViewContainerHidden(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 75
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_1e
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hide()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1f
    const/16 p1, 0xf6

    .line 77
    invoke-virtual {p0, v3, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragmentIndex(II)I

    move-result p2

    if-gez p2, :cond_20

    .line 78
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->insert(II)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_20
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeTarget(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_21
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    .line 81
    array-length v1, p2

    if-lez v1, :cond_22

    .line 82
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xf5

    new-array v2, v2, [I

    aget p2, p2, v4

    aput p2, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_22
    const/16 p2, 0xf5

    if-ne p1, p2, :cond_26

    .line 83
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_23
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xfb

    if-eq p1, p2, :cond_24

    .line 85
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_24
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_25
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v1, :cond_26

    .line 88
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_26
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    return-void

    .line 90
    :cond_27
    sget-object p1, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyUpdateSet s.3"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 91
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    const-string p1, "delegateMode fail because mActivity is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0OO;

    invoke-direct {v0, p3}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0OO;-><init>(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4
    :goto_0
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 7
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, v1, v1, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object v2
.end method

.method public getActiveFragment(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xf0

    return p0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object p0
.end method

.method public getFragmentIndex(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getOriginalFragment(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xf0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getStoredFragment(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Ljava/util/Map;

    const/16 v0, 0xf0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    const/16 v2, 0xf4

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOO00()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 6
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager;

    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/AsyncInflaterManager;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result v2

    new-instance v3, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    invoke-direct {v3, v6, v7, v9}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/AsyncInflaterManager;->asyncInflater(Landroid/view/ViewGroup;ILcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;)V

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xf1

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v12

    const/4 v13, 0x4

    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    .line 9
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager;

    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/AsyncInflaterManager;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result v2

    new-instance v3, Lcom/android/camera/fragment/BaseFragmentDelegate$2;

    invoke-direct {v3, v6, v7, v12}, Lcom/android/camera/fragment/BaseFragmentDelegate$2;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/AsyncInflaterManager;->asyncInflater(Landroid/view/ViewGroup;ILcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;)V

    :cond_1
    const/4 v1, 0x1

    const/16 v2, 0xf3

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v14

    const/16 v2, 0xf2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v15

    const/4 v5, 0x3

    if-eqz v10, :cond_2

    if-eqz v15, :cond_2

    .line 13
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager;

    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/AsyncInflaterManager;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result v2

    new-instance v3, Lcom/android/camera/fragment/BaseFragmentDelegate$3;

    invoke-direct {v3, v6, v7, v15}, Lcom/android/camera/fragment/BaseFragmentDelegate$3;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/AsyncInflaterManager;->asyncInflater(Landroid/view/ViewGroup;ILcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;)V

    .line 15
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 16
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 17
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-nez v10, :cond_3

    .line 18
    invoke-static {v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v0

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v12, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 19
    invoke-static {v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v0

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v9, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 20
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v0

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v15, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    const/4 v8, 0x2

    .line 21
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v0

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v14, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 22
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo0()Z

    move-result v0

    const/16 v3, 0x8

    const/16 v2, 0xf0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    move-object v11, v4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    const/16 v16, 0xff4

    const/16 v17, 0x0

    const/16 v18, 0xf0

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 p2, v3

    move-object/from16 v3, v17

    move-object v11, v4

    move/from16 v4, v18

    move-object/from16 v5, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    if-eqz v10, :cond_6

    if-eqz v0, :cond_6

    .line 25
    new-instance v1, Lcom/android/camera/fragment/AsyncInflaterManager;

    iget-object v2, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/AsyncInflaterManager;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v2, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static/range {p2 .. p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result v3

    new-instance v4, Lcom/android/camera/fragment/BaseFragmentDelegate$4;

    invoke-direct {v4, v6, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate$4;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/BaseFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/fragment/AsyncInflaterManager;->asyncInflater(Landroid/view/ViewGroup;ILcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;)V

    goto :goto_1

    .line 27
    :cond_6
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    move/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 29
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 30
    :goto_1
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v10, :cond_7

    .line 31
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    :cond_7
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    if-nez v10, :cond_8

    .line 41
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 42
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 43
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v15}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 44
    :cond_8
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-direct {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    .line 45
    invoke-virtual {v11}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public isViewContainerHidden(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    and-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BaseDelegate;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public resetFeatureFragment(Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetFeatureFragment mLastFragmentAlias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newFragments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 5
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    move v7, v6

    .line 7
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 8
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/fragment/BaseFragmentOperation;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v4

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_4

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->clear()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_5
    sget-object p1, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "replaceInfoList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    move-object v1, v0

    :cond_6
    return-object v1
.end method

.method public unRegisterProtocol()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BaseDelegate;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyUpdateSet s.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public varargs updateCurrentFragments(III[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eq p3, v1, :cond_0

    return-void

    :cond_0
    if-eq p3, v1, :cond_6

    const/4 p0, 0x2

    if-eq p3, p0, :cond_5

    const/4 p0, 0x3

    const/4 p1, 0x0

    if-eq p3, p0, :cond_3

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3
    :pswitch_1
    aget p0, p4, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 5
    :goto_0
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_8

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10
    :pswitch_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_8

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_4

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
