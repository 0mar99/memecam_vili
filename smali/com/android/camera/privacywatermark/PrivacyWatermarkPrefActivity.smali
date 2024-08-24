.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkPrefActivity;
.super Lcom/android/camera/fragment/settings/PreferenceExtraActivity;
.source "PrivacyWatermarkPrefActivity.java"

# interfaces
.implements Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;


# instance fields
.field public mPrefHeaderImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0d0022

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;->getPrivacyLogoWrappedLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a01d1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkPrefActivity;->mPrefHeaderImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0343

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkPrefActivity;->onPreferenceUpdated()V

    const v1, 0x7f0a0342

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentContainerView;

    const v3, 0x7f0a00a9

    .line 12
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/privacylogo/PrivacyLogoView;

    .line 13
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    sub-int/2addr v4, v0

    .line 14
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 16
    sget-object v2, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->TAG:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    if-nez v2, :cond_3

    .line 18
    new-instance v2, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    invoke-direct {v2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;-><init>()V

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v3, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->TAG:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 22
    :cond_3
    invoke-virtual {v2, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->setEventListener(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;)V

    .line 23
    iput-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->getFragmentTitle()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_4
    return-void
.end method

.method public onPreferenceUpdated()V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Util;->isInNightMode(Landroid/content/Context;)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f080101

    goto :goto_0

    :cond_1
    const v0, 0x7f080100

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const v0, 0x7f0800ff

    goto :goto_0

    :cond_3
    const v0, 0x7f0800fe

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkPrefActivity;->mPrefHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    return-void
.end method
