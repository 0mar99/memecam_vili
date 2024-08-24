.class public Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;
.super Ljava/lang/Object;
.source "RecyclerViewItemPositionGetter.java"

# interfaces
.implements Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String; = "RecyclerViewItemPositionGetter"


# instance fields
.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    iput-object p2, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getFirstVisiblePosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public getLastVisiblePosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/visibilityutils/scroll_utils/RecyclerViewItemPositionGetter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method
