.class public abstract Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseRecyclerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field public mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;->OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs alphaGone([Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 3
    invoke-static {v2, v0, v3}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public varargs alphaShow([Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2, v2}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public getCubicEaseOut()Lmiuix/view/animation/CubicEaseOutInterpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-object p0
.end method

.method public getRotateViews()[Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs hideView([Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener<",
            "TT;>;TT;I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0o0/OooO0O0/OooO00o;

    invoke-direct {v0, p1, p2, p3, p4}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0o0/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract setData(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public varargs showView([Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v2, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {v2, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
