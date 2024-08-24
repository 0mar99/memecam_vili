.class public Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "TsBeautyParamsFragment.java"

# interfaces
.implements Lcom/android/camera/fragment/beauty/IBeautyMutex;


# static fields
.field public static final TAG:Ljava/lang/String; = "RemodelingParamsFragment"


# instance fields
.field public mClickableToast:Lcom/android/camera/widget/ClickableToast;

.field public mMutexDisableArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    const-string/jumbo v0, "pref_beautify_whiten_ratio_key"

    const-string/jumbo v1, "pref_beautify_solid_ratio_key"

    const-string/jumbo v2, "pref_beautify_makeup_ratio_key"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mMutexDisableArray:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/text/Spanned;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p2, p4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    invoke-interface {p2, p4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/data/TypeItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/data/data/TypeItem;->disable:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;)Lcom/android/camera/widget/ClickableToast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->restoreBeautyMutexItem()V

    return-void
.end method

.method private isOnKeyGuard()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreBeautyMutexItem()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOO0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOO0O;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/data/data/TypeItem;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    .line 3
    iget-boolean p1, p1, Lcom/android/camera/data/data/TypeItem;->disable:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120229

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->clickToast(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->getShineType()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/data/data/TypeItem;

    iget p3, p3, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 p5, 0x1

    invoke-interface {p2, p4, p1, p3, p5}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->getShineType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera/data/data/TypeItem;)V
    .locals 1

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mMutexDisableArray:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget-object v0, p2, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 14
    iput-boolean p0, p2, Lcom/android/camera/data/data/TypeItem;->disable:Z

    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v0, p2, Lcom/android/camera/data/data/TypeItem;->disable:Z

    goto :goto_0

    .line 16
    :cond_1
    iput-boolean v0, p2, Lcom/android/camera/data/data/TypeItem;->disable:Z

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(ZLcom/android/camera/data/data/TypeItem;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mMutexDisableArray:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget-object v0, p2, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 2
    iput-boolean p0, p2, Lcom/android/camera/data/data/TypeItem;->disable:Z

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v0, p2, Lcom/android/camera/data/data/TypeItem;->disable:Z

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p2, Lcom/android/camera/data/data/TypeItem;->disable:Z

    :goto_0
    return-void
.end method

.method public augmentItemList()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->augmentItemList()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMakeupOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMakeup2Open()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO;

    invoke-direct {v2, p0, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO;-><init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;Z)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public clickToast(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 8
    new-instance v2, Lcom/android/camera/widget/ClickableToast;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->isOnKeyGuard()Z

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/android/camera/widget/ClickableToast;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ClickableToast;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    invoke-virtual {v2}, Lcom/android/camera/widget/ClickableToast;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 12
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v7, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOO0;

    invoke-direct {v7, v4, v5, v1, v6}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOO0;-><init>(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/text/Spanned;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p1, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    new-instance p1, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment$1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;)V

    .line 17
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/16 v6, 0x21

    .line 18
    invoke-virtual {v4, p1, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 20
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    const/16 v1, 0x50

    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mClickableToast:Lcom/android/camera/widget/ClickableToast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getBeautyType()Ljava/lang/String;
    .locals 0

    const-string p0, "5"

    return-object p0
.end method

.method public getMutexArray()[Ljava/lang/String;
    .locals 0

    const-string p0, "13"

    .line 1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "5"

    return-object p0
.end method

.method public handleMutex(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;

    invoke-direct {v2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;-><init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;Z)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->mMutexDisableArray:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    iput p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/CenterLayoutManager;

    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public initExtraType()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/TypeItem;

    iget-object v0, v0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string/jumbo v3, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/constant/BeautyConstant;->defaultOffRegion()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4
    :goto_0
    iput v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    .line 5
    iput v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    move v0, v3

    .line 6
    :goto_1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    :goto_3
    return-void
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOO0o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOO0o;-><init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;)V

    return-object v0
.end method

.method public isMutexOther()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClearClick()V
    .locals 3

    const-string v0, "RemodelingParamsFragment"

    const-string/jumbo v1, "onClearClick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->onClearClick()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "attr_click_beauty_face_clear"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_beauty_face"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onResetClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->onResetClick()V

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_operate_state"

    const-string v1, "attr_click_beauty_face_reset"

    .line 3
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_beauty_face"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
