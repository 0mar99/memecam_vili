.class public Lcom/android/camera/fragment/dialog/PrivacyWatermarkNewbieDialogFragment;
.super Lcom/android/camera/fragment/dialog/AiSceneNewbieDialogFragment;
.source "PrivacyWatermarkNewbieDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PrivacyWatermarkHint"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AiSceneNewbieDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public needBlackPreview()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0078

    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;->getPrivacyLogoWrappedLayout(Landroid/content/Context;IZ)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/view/View;->setPadding(IIII)V

    const p2, 0x7f0a01d1

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->initViewOnTouchListener(Landroid/view/View;)V

    return-object p1
.end method
