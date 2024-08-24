.class public Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mBrightnessMode:I

.field public final mCallbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/CameraBrightnessCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mPaused:Z

.field public mScreenAutoBrightnessRatioInner:F

.field public mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/CameraBrightnessCallback;ZZF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    .line 5
    iput-boolean p4, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    .line 6
    iput-boolean p3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    .line 7
    iput p5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenAutoBrightnessRatioInner:F

    return-void
.end method

.method private getBrightIsAndroidP(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const-string/jumbo v0, "screen_brightness_mode"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00o()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraBrightnessCallback;

    iget v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    invoke-interface {v1, v3}, Lcom/android/camera/CameraBrightnessCallback;->setPreviousBrightnessMode(I)V

    .line 6
    iget v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v1}, Lcom/android/camera/CameraBrightnessCallback;->getPreviousBrightnessMode()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10
    iput v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    .line 11
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    if-ne v0, v2, :cond_6

    .line 12
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    const/4 v1, 0x0

    const-string v2, "CameraBrightness"

    const/high16 v3, 0x3f000000    # 0.5f

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenAutoBrightnessRatioInner:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    const-string v0, "adjustBrightnessInAutoMode(0.5)"

    .line 13
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v0, v3}, Lcom/android/camera/CameraBrightnessCallback;->adjustBrightnessInAutoMode(F)V

    goto :goto_2

    .line 15
    :cond_4
    iget v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenAutoBrightnessRatioInner:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    const-string v0, "adjustBrightnessInAutoMode(0)"

    .line 16
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraBrightnessCallback;->adjustBrightnessInAutoMode(F)V

    .line 18
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/CameraBrightnessCallback;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    float-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/android/camera/CameraBrightnessCallback;->setBrightness(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground useDefaultValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " paused="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBrightness"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getBrightIsAndroidP(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/CameraBrightnessCallback;->setBrightness(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
