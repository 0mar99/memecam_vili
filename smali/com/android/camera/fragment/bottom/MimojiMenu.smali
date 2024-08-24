.class public Lcom/android/camera/fragment/bottom/MimojiMenu;
.super Lcom/android/camera/fragment/bottom/AbBottomMenu;
.source "MimojiMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MIMOJI_CARTOON:I = 0x1

.field public static final MIMOJI_HUMEN:I = 0x0

.field public static final MIMOJI_NULL:I = -0x1

.field public static final MIMOJI_TYPE:I = 0x8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public currentModule:I

.field public mIsMimoji1:Z

.field public mMenuTextViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public mMimojiMenuTabList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/bottom/MimojiMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/bottom/MimojiMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllView()V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v4, v2

    .line 4
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 5
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/bottom/MenuItem;

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mItemCreator:Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->isModeSelectTransparent()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v3

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    invoke-interface {v6, v7, v8}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;->create(Landroid/view/ViewGroup;Z)Landroid/widget/TextView;

    move-result-object v6

    .line 7
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v7

    const v8, 0x7f130172

    invoke-virtual {v7, v6, v8}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 8
    iget-object v7, v5, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget v7, v5, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_2

    iget v7, v5, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    if-ne v7, v3, :cond_2

    .line 12
    iput-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_3

    .line 14
    :cond_2
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_3

    iget v7, v5, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    if-nez v7, :cond_3

    .line 15
    iput-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 18
    :goto_3
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    iget v5, v5, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_4
    invoke-super {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->addAllView()V

    return-void
.end method

.method public getChildMenuViewList()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getDefaultType()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getMenuData()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->currentModule:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji1:Z

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    .line 9
    iput v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f120530

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 11
    iput v3, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    .line 14
    iput v3, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f120556

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 16
    iput v3, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    const/4 v1, 0x1

    .line 19
    iput v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f120555

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 21
    iput v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 22
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    .line 24
    iput v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 25
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f12099a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 26
    iput v3, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 27
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    .line 29
    iput v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 30
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f1201f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 31
    iput v3, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 32
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiMenuTabList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->init(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oooo()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji1:Z

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-void
.end method

.method public isClickEnable()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->isClickEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mIsMimoji1:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRefreshUI()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->isClickEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->impl2()Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/bottom/MimojiMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick MIMOJI_CARTOON"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result p1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setAvatarPanelState(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->switchMenu()V

    if-eqz v0, :cond_6

    .line 10
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->switchMimojiList()I

    goto :goto_0

    .line 11
    :cond_4
    sget-object p1, Lcom/android/camera/fragment/bottom/MimojiMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick MIMOJI_HUMEN"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_5

    return-void

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/MimojiMenu;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setAvatarPanelState(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->switchMenu()V

    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->switchMimojiList()I

    :cond_6
    :goto_0
    return-void
.end method

.method public switchMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;->addAllView()V

    return-void
.end method
