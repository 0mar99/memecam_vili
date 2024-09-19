.class public final Lcom/android/camera/customization/ThemeModeManager;
.super Ljava/lang/Object;
.source "ThemeModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;,
        Lcom/android/camera/customization/ThemeModeManager$ThemeMode;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/customization/ThemeModeManager;

.field public static final THEME_MODE_DARK:I = 0x0

.field public static final THEME_MODE_INVALID:I = -0x1

.field public static final THEME_MODE_LIGHT:I = 0x1


# instance fields
.field public mCurrentThemeMode:I

.field public mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/customization/ThemeModeManager;

    invoke-direct {v0}, Lcom/android/camera/customization/ThemeModeManager;-><init>()V

    sput-object v0, Lcom/android/camera/customization/ThemeModeManager;->INSTANCE:Lcom/android/camera/customization/ThemeModeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/customization/ThemeModeManager;->mCurrentThemeMode:I

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->initTheme(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/customization/ThemeModeManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/customization/ThemeModeManager;->INSTANCE:Lcom/android/camera/customization/ThemeModeManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentThemeMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/customization/ThemeModeManager;->mCurrentThemeMode:I

    return p0
.end method

.method public requestChangeTheme(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/customization/ThemeModeManager;->mListener:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;->requestChangeTheme(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V

    :cond_1
    return-void
.end method

.method public setThemeChangeListener(Lcom/android/camera/customization/ThemeModeManager$ThemeModeInterface;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/customization/ThemeModeManager;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setThemeMode(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/customization/ThemeModeManager;->mCurrentThemeMode:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->initTheme(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const-string v1, "light"

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->initTheme(Ljava/lang/String;)V

    .line 4
    :goto_0
    iput p1, p0, Lcom/android/camera/customization/ThemeModeManager;->mCurrentThemeMode:I

    :cond_1
    return-void
.end method
