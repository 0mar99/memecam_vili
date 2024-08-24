.class public Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;
.super Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;
.source "FragmentBottomMenu2.java"


# instance fields
.field public mDisplayTitle:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    return-void
.end method

.method private expandMenu(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mItemCreator:Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;->create(Landroid/view/ViewGroup;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v1, 0x7f06032f

    invoke-virtual {p1, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v1, 0x7f130172

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->mDisplayTitle:I

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->initView(Landroid/view/View;)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->mDisplayTitle:I

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->expandMenu(I)V

    :cond_0
    return-void
.end method
