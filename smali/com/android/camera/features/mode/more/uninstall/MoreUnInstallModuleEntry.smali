.class public Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "MoreUnInstallModuleEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/entry/BaseModuleEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModeUI;

    iget-object p0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/module/FakerModule;

    invoke-direct {p0}, Lcom/android/camera/module/FakerModule;-><init>()V

    return-object p0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleDevice;

    invoke-direct {p0}, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleDevice;-><init>()V

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xfd

    return p0
.end method

.method public support()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
