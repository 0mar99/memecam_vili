.class public Lmiuix/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/IActivity;
.implements Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;,
        Lmiuix/appcompat/app/AppCompatActivity$Callback;
    }
.end annotation


# instance fields
.field public mAppDelegate:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    new-instance v0, Lmiuix/appcompat/app/AppDelegate;

    new-instance v1, Lmiuix/appcompat/app/AppCompatActivity$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AppCompatActivity$Callback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V

    new-instance v3, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;

    invoke-direct {v3, p0, v2}, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V

    invoke-direct {v0, p0, v1, v3}, Lmiuix/appcompat/app/AppDelegate;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    return-void
.end method

.method public static synthetic access$1001(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic access$1101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$301(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    return-void
.end method

.method public static synthetic access$401(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public static synthetic access$501(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$601(Lmiuix/appcompat/app/AppCompatActivity;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$701(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$801(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$901(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismissImmersionMenu(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public executeCloseEnterAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeCloseEnterAnimation()V

    return-void
.end method

.method public executeCloseExitAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeCloseExitAnimation()V

    return-void
.end method

.method public executeOpenEnterAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeOpenEnterAnimation()V

    return-void
.end method

.method public executeOpenExitAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->executeOpenExitAnimation()V

    return-void
.end method

.method public exitFloatingActivityAll()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->exitFloatingActivityAll()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppDelegate;->shouldDelegateActivityFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    :cond_0
    return-void
.end method

.method public getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getExtraHorizontalPaddingLevel()I

    move-result p0

    return p0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getTranslucentStatus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result p0

    return p0
.end method

.method public hideFloatingBrightPanel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->hideFloatingBrightPanel()V

    return-void
.end method

.method public hideFloatingDimBackground()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->hideFloatingDimBackground()V

    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isExtraHorizontalPaddingEnable()Z

    move-result p0

    return p0
.end method

.method public isFloatingWindowTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isFloatingTheme()Z

    move-result p0

    return p0
.end method

.method public isInFloatingWindowMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    move-result p0

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onFloatingWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFloatingWindowModeChanging(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPostResume()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->onPostResume()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->onStop()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public realFinish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public requestExtraWindowFeature(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    move-result p0

    return p0
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnableSwipToDismiss(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setEnableSwipToDismiss(Z)V

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingLevel(I)V

    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(Z)V

    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    return-void
.end method

.method public setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    return-void
.end method

.method public showFloatingBrightPanel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->showFloatingBrightPanel()V

    return-void
.end method

.method public showImmersionMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity;->mAppDelegate:Lmiuix/appcompat/app/AppDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
