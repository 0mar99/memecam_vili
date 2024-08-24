.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_MULTI:I = 0x1

.field public static final ITEM_TYPE_TOGGLE:I = 0x2


# instance fields
.field public mAnimateHeight:I

.field public mAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimationScaleSize:F

.field public mContext:Landroid/content/Context;

.field public mCurrentRow:I

.field public mDegree:I

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mRowHeightLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRowLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

.field public mSupportedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowHeightLists:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 9
    iput-object p4, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    const p1, 0x7f0703f2

    const p2, 0x3ec28f5c    # 0.38f

    .line 10
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationScaleSize:F

    .line 11
    iput p5, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method private getRow(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    sub-int v3, v0, v1

    .line 3
    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    goto :goto_1

    .line 4
    :cond_1
    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v2
.end method

.method private getTotalRow()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    sub-int v3, v0, v2

    .line 3
    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    goto :goto_1

    .line 4
    :cond_1
    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public animationRunning()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getDegree()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result p0

    const/16 p1, 0xad

    if-eq p0, p1, :cond_0

    const/16 p1, 0xae

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb9

    if-eq p0, p1, :cond_0

    const/16 p1, 0xbb

    if-eq p0, p1, :cond_0

    const/16 p1, 0xcc

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd0

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd2

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd5

    if-eq p0, p1, :cond_0

    const/16 p1, 0xe2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getTotalRow(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v1, v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    move v3, p1

    move v2, v0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ne v3, p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_1
    if-ne v3, p1, :cond_2

    move v3, v2

    :cond_2
    sub-int v4, v0, v3

    .line 10
    rem-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sub-int v1, v2, v3

    :cond_5
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2
    iget-object v3, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    .line 3
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getExtraResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getExtraResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;->updateResource()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v9

    .line 5
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 7
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/ComponentData;->disableUpdate()Z

    move-result v5

    xor-int/2addr v5, v6

    invoke-virtual {v9, v5}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setEnableClick(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0a042c

    invoke-interface {v5, v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SlideSwitchButton;

    .line 9
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v3

    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isShowText()Z

    move-result v6

    invoke-virtual {v1, v5, v3, v6}, Lcom/android/camera/ui/SlideSwitchButton;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V

    .line 10
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isEnableClick()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 11
    iget-object v3, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/SlideSwitchButton;->setSlideSwitchListener(Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;)V

    .line 12
    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getMultiContentDescriptionString(I)I

    move-result v0

    if-lez v0, :cond_d

    .line 13
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_d

    .line 14
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_1
    const v2, 0x7f0a0178

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a0177

    .line 16
    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/ColorCircleBackgroundView;

    .line 17
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getColorCircleBackgroundView(Lcom/android/camera/ui/ColorCircleBackgroundView;)V

    const v7, 0x7f0a0176

    .line 18
    invoke-virtual {v1, v7}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/LottieAnimationView;

    const v8, 0x7f0a0376

    .line 19
    invoke-virtual {v1, v8}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    const v10, 0x7f0a0179

    .line 20
    invoke-virtual {v1, v10}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 21
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setSelected(Z)V

    const v11, 0x7f0a020e

    .line 22
    invoke-virtual {v1, v11}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTextResource()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 24
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTextResource()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTextResourceString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_0
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isShowRightAngleTag()Z

    move-result v12

    const/4 v13, 0x2

    const-string v14, ","

    const/4 v15, 0x0

    if-eqz v12, :cond_8

    .line 27
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 28
    iget-object v12, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 29
    invoke-virtual {v2, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 30
    invoke-virtual {v8, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 31
    :cond_3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v12

    const v13, 0x7f0809bb

    const v6, 0x7f0600c1

    invoke-virtual {v12, v11, v13, v6}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 32
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v6, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v6, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    const/16 v12, 0xaa

    if-ne v6, v12, :cond_5

    .line 36
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 37
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v6

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v12

    .line 39
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f1200c5

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v7

    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Object;

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v7, v18

    const v15, 0x7f10000a

    invoke-virtual {v4, v15, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f10000b

    const/4 v7, 0x1

    new-array v14, v7, [Ljava/lang/Object;

    .line 41
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v18

    invoke-virtual {v4, v6, v12, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object/from16 v17, v7

    const v6, 0x7f1200c4

    .line 43
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const v6, 0x7f1200c6

    .line 44
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    move-object/from16 v17, v7

    .line 45
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v6

    const/16 v7, 0xdb

    if-ne v6, v7, :cond_7

    .line 46
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f1200aa

    .line 47
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const v6, 0x7f1200a9

    .line 48
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    const v6, 0x7f1200ab

    .line 49
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    :cond_7
    :goto_3
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v17, v7

    const/16 v6, 0x8

    .line 51
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 56
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f12008f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 57
    :cond_9
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v7

    const/16 v12, 0xe1

    if-eq v7, v12, :cond_a

    .line 58
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120041

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_a
    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 61
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 62
    invoke-virtual {v2, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 63
    invoke-virtual {v8, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 64
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v8, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    const/4 v7, 0x1

    .line 66
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :goto_5
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lcom/android/camera/ui/ColorCircleBackgroundView;->isSwitchOn()Z

    move-result v4

    if-nez v4, :cond_c

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 69
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->getTopSelectedAnimID()I

    move-result v4

    if-eqz v4, :cond_c

    move v6, v7

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 70
    :goto_6
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getClickAnimation(Landroid/view/View;)V

    .line 71
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isEnableClick()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v9}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lcom/android/camera/ui/ColorCircleBackgroundView;->setSwitchOn(ZZ)V

    .line 74
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v5

    iget v8, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationScaleSize:F

    move-object/from16 v7, v17

    invoke-interface/range {v5 .. v11}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getConfigSelectColor(ZLcom/airbnb/lottie/LottieAnimationView;FLcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getMulitItem()I

    move-result v0

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getToggleItem()I

    move-result v0

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 6
    :goto_0
    new-instance p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/ExtraAdapter;->onViewAttachedToWindow(Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow()I

    move-result v0

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    if-ne v1, v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/ExtraAdapter;->getRow(I)I

    move-result v7

    .line 9
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    if-le v7, v1, :cond_4

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    iget v5, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowHeightLists:Ljava/util/List;

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuOpenAnimation(Ljava/util/List;IIILjava/util/List;)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iput v7, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    goto :goto_0

    :cond_4
    if-ne v7, v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_6

    .line 16
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    iget v5, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    iget-object v6, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowHeightLists:Ljava/util/List;

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuOpenAnimation(Ljava/util/List;IIILjava/util/List;)V

    .line 17
    iget p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    :cond_6
    return-void
.end method

.method public setAnimateHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    return-void
.end method

.method public setDegree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method public setRowHeightLists(IIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowHeightLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    add-int/2addr v2, p3

    .line 2
    iget-object v3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowHeightLists:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    add-int/2addr v2, p4

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowHeightLists:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
