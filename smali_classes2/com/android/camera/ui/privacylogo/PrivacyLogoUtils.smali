.class public final Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;
.super Ljava/lang/Object;
.source "PrivacyLogoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivacyLogoWrappedLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;->getPrivacyLogoWrappedLayout(Landroid/content/Context;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivacyLogoWrappedLayout(Landroid/content/Context;IZ)Landroid/view/View;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7f0d00e2

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0310

    .line 5
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const v0, 0x7f0a00a9

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->setAlwaysUseNightLogo(Z)V

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method
