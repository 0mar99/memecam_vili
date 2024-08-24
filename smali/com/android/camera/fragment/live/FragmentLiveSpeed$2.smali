.class public Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;
.super Ljava/lang/Object;
.source "FragmentLiveSpeed.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSpeed;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    iget-object v0, v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    iget-object v1, v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mAdapter:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMakeUpRecyclerViewContentWidth(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    iget-object v2, v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->effectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v2, p0, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method
