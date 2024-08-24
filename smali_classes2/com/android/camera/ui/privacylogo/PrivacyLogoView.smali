.class public Lcom/android/camera/ui/privacylogo/PrivacyLogoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PrivacyLogoView.java"


# instance fields
.field public mAlwaysUseNightLogo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->mAlwaysUseNightLogo:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->mAlwaysUseNightLogo:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->mAlwaysUseNightLogo:Z

    return-void
.end method

.method private getPrivacyLogoResId()I
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->useNightMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080404

    return p0

    :cond_0
    const p0, 0x7f080401

    return p0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->useNightMode()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f080403

    return p0

    :cond_2
    const p0, 0x7f080402

    return p0
.end method

.method private useNightMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->mAlwaysUseNightLogo:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->isInNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public setAlwaysUseNightLogo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->mAlwaysUseNightLogo:Z

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;->getPrivacyLogoResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method
