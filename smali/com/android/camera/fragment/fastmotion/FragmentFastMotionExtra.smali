.class public Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFastMotionExtra.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;,
        Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$ItemPadding;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfffff2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAutoButton:Lcom/android/camera/ui/ActivateImageView;

.field public mAutoButtonLayout:Landroid/widget/LinearLayout;

.field public mCurrentTitle:I

.field public mData:Lcom/android/camera/data/data/ComponentData;

.field public mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mHorizontalViewLayout:Landroid/widget/LinearLayout;

.field public mListener:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;

.field public mNeedAnimation:Z

.field public mTargetView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method private animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p3}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private animateShowView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-boolean p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_0
    return-void
.end method

.method private getExtraSpeedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "60000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "30000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "20000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "15000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_4
    const-string v0, "10000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "5000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "4000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "3000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "2000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "1000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "500"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_c
    const-string v0, "120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1206ff

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120701

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1206fe

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120702

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120700

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xbe2f -> :sswitch_c
        0xc573 -> :sswitch_b
        0xccf5 -> :sswitch_a
        0x17005f -> :sswitch_9
        0x1774be -> :sswitch_8
        0x17e91d -> :sswitch_7
        0x185d7c -> :sswitch_6
        0x18d1db -> :sswitch_5
        0x2c90bb1 -> :sswitch_4
        0x2cb518c -> :sswitch_3
        0x2d72332 -> :sswitch_2
        0x2e53ab3 -> :sswitch_1
        0x30f8136 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSaveTime()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v0

    const/16 v1, 0xa9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f1203ed

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    div-double/2addr v1, v5

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    div-double/2addr v1, v5

    div-double/2addr v1, v3

    double-to-int v0, v1

    int-to-double v5, v0

    sub-double v5, v1, v5

    mul-double/2addr v5, v3

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v4

    const v2, 0x7f100012

    const v4, 0x7f1203ef

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v1, :cond_2

    const v1, 0x7f100011

    if-nez v3, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v1, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v4, 0x7f1203ee

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, v1, v0, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v5

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 12
    invoke-virtual {p0, v4, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-gtz v3, :cond_3

    new-array v0, v6, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-array v0, v6, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initAdapter(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initHorizontalListView(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method private initHorizontalListView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    const/4 v2, 0x1

    const v3, 0x7f0703c0

    const v5, 0x7f1206fa

    if-ne p1, v5, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 13
    invoke-virtual {p1, v5, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const-string p1, "0"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, v4, v4}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 21
    invoke-virtual {p1, v5, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->animateShowView(Landroid/view/View;)V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 26
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0702ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, p0

    .line 29
    invoke-interface {p1, v2, v0}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    :cond_2
    return-void
.end method

.method private showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/protocols/TopAlert;->alertFastmotionProValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertFastmotionValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mListener:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;

    if-eqz v2, :cond_3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;->showFastmotionTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3
    return-void
.end method

.method private toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    .line 5
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 9
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$1;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method public animateOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00ooo/OooO0O0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00ooo/OooO0O0;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCurrentTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff2

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0083

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0285

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0284

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0283

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoImageView(Landroid/content/Context;)Lcom/android/camera/ui/ActivateImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v0, 0x7f1206fc

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->TAG:Ljava/lang/String;

    const-string p1, "ignore click due to disabled"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->TAG:Ljava/lang/String;

    const-string p1, "ignore click due to doing action"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v4, "0"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 12

    move-object v6, p0

    move-object v0, p1

    move-object v7, p3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, v6, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    move/from16 v2, p5

    if-eq v2, v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v4

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    sget-object v2, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onManuallyDataChanged: newValue="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isCustomValue="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const v2, 0x7f1206fa

    const-string v3, "5000"

    const-string v5, "4000"

    const/16 v8, 0xa9

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v1, v2, :cond_7

    const v2, 0x7f1206fd

    if-eq v1, v2, :cond_3

    goto/16 :goto_5

    .line 6
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    :cond_4
    iget v1, v6, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getExtraSpeedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getSaveTime()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 9
    :cond_5
    iget v1, v6, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getExtraSpeedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getSaveTime()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 10
    :cond_6
    iget v1, v6, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getExtraSpeedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 11
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 15
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpg-double v5, v3, v1

    if-gez v5, :cond_11

    .line 16
    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    new-array v5, v10, [I

    const/16 v7, 0x10

    aput v7, v5, v9

    invoke-interface {v0, v5}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 18
    sget-object v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "speedValue "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " etValue "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 19
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 21
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->toUpdateAutoButton()V

    .line 23
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOO0()Z

    move-result v2

    const v8, 0x7f1206fc

    const v11, 0x7f10001d

    if-eqz v2, :cond_d

    .line 24
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25
    :cond_9
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 26
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v7, v3, v9

    invoke-virtual {v1, v11, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getExtraSpeedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getSaveTime()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 29
    :cond_b
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 30
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v7, v3, v9

    invoke-virtual {v1, v11, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getExtraSpeedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->getSaveTime()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 33
    :cond_d
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    .line 34
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v9

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 35
    :cond_f
    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 36
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v7, v2, v9

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->showTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 38
    :cond_11
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    :cond_12
    :goto_6
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mListener:Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$DataChangeListener;

    return-void
.end method

.method public toUpdateAutoButton()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method
