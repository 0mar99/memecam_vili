.class public abstract Lcom/android/camera/fragment/settings/BasePreferenceActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "BasePreferenceActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fixSmallTitle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isTabletSplitActivity(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 4
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_0
    return-void
.end method

.method public abstract getPreferenceFragmentTag()Ljava/lang/String;
.end method

.method public init()V
    .locals 4

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

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->getPreferenceFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.camera.fragment.settings."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x1020002

    .line 12
    invoke-virtual {v1, v3, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 14
    check-cast v2, Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    iput-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    if-nez v0, :cond_3

    .line 16
    check-cast v2, Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    iput-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->getFragmentTitle()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->init()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->mPreferenceFragment:Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onRestart()V

    :cond_0
    return-void
.end method

.method public transitFromWhere()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_where"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb3

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xbd

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcf

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd3

    goto :goto_0

    :cond_1
    const/16 v0, 0xd2

    goto :goto_0

    :cond_2
    const/16 v0, 0xd1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
