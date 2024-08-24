.class public Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LevelBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;,
        Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public mContext:Landroid/content/Context;

.field public mDegree:I

.field public mEnableClick:Z

.field public mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field public mItemHorizontalMargin:I

.field public mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mPreSelectedItem:I

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSelectedItem:I

.field public mSingleCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSelectedItem:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mPreSelectedItem:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mItemHorizontalMargin:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mEnableClick:Z

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSingleCheckList:Ljava/util/List;

    .line 7
    iput p3, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mItemHorizontalMargin:I

    .line 8
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 9
    new-instance p2, Landroid/animation/FloatEvaluator;

    invoke-direct {p2}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 10
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mItemHorizontalMargin:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSelectedItem:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSelectedItem:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mEnableClick:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mPreSelectedItem:I

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mPreSelectedItem:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method


# virtual methods
.method public baseNormalColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3e19999a    # 0.15f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;

    .line 3
    invoke-virtual {p1, p1, v0, p2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;->setDateToView(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;I)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mDegree:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d002d

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;-><init>(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;)V

    return-object p2
.end method

.method public onItemHolderClick(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$SingleCheckViewHolder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    .line 4
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mEnableClick:Z

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mDegree:I

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;->mSelectedItem:I

    return-void
.end method
