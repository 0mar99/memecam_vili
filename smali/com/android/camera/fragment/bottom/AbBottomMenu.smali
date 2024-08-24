.class public abstract Lcom/android/camera/fragment/bottom/AbBottomMenu;
.super Ljava/lang/Object;
.source "AbBottomMenu.java"


# static fields
.field public static final CLICK_INTERVAL:I = 0x12c


# instance fields
.field public mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

.field public mContainerView:Landroid/widget/LinearLayout;

.field public mContext:Landroid/content/Context;

.field public mCurrentBeautyTextView:Landroid/widget/TextView;

.field public mItemCreator:Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

.field public mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/ViewGroup;Z)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d002e

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public addAllView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1200af

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public abstract getChildMenuViewList()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end method

.method public getCurrentBeautyTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public abstract getDefaultType()I
.end method

.method public abstract getMenuData()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/MenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public getNeedActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getChildMenuViewList()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public hideAdvance()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;-><init>(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    if-nez p4, :cond_0

    .line 4
    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/ooOO/OooO00o;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/ooOO/OooO00o;-><init>(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mItemCreator:Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mItemCreator:Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

    :goto_0
    return-void
.end method

.method public isClickEnable()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mLastClickTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isRefreshUI()Z
.end method

.method public selectBeautyType(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getChildMenuViewList()Landroid/util/SparseArray;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setActivated(Z)V

    :cond_0
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    move v2, v3

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setActivated(Z)V

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public abstract switchMenu()V
.end method
