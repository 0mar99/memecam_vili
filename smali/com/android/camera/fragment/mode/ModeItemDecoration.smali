.class public Lcom/android/camera/fragment/mode/ModeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ModeItemDecoration.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ModeItemDecoration"


# instance fields
.field public mBottomMargin:I

.field public mContext:Landroid/content/Context;

.field public mHorMargin:I

.field public mModeListHorMargin:I

.field public mPerLineCount:I

.field public mTopMargin:I

.field public mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    .line 4
    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070622

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeItemWidth(Landroid/content/Context;)I

    move-result v0

    .line 7
    :goto_0
    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getPanelWidth(Landroid/content/Context;I)I

    move-result v1

    if-nez p3, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07062d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    :cond_1
    if-ne p3, p2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07062e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07062c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    .line 11
    :goto_1
    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    mul-int/2addr v0, v2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    const/4 v3, 0x2

    mul-int/2addr v0, v3

    sub-int/2addr v1, v0

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    .line 12
    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getTopMarginForNormal(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v3, :cond_5

    if-ne p3, v1, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    if-ne p3, p2, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    invoke-static {p1, v2, p3}, Lcom/android/camera/display/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    goto :goto_4

    .line 14
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getMoreItemBottomMargin(Landroid/content/Context;)I

    move-result p1

    .line 15
    :goto_4
    iput p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    .line 16
    sget-object p1, Lcom/android/camera/fragment/mode/ModeItemDecoration;->TAG:Ljava/lang/String;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p2

    const-string p0, "init ModeItemDecoration, mModeListHorMargin = %s, mHorMargin = %s, mTopMargin = %s, mBottomMargin = %s."

    .line 18
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p4, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    .line 5
    iget p0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4

    const/4 v4, 0x2

    if-eq p0, v4, :cond_2

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 p2, -0x1

    if-eq p0, p2, :cond_6

    .line 9
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_3

    const/4 p2, 0x6

    if-ne p0, p2, :cond_6

    :cond_3
    move p4, v2

    move v0, p4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 13
    invoke-static {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeHelper;->isFooter4PopupStyle(II)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p1, p4, v1, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
