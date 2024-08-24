.class public Lcom/android/camera/features/mode/BaseModuleDevice;
.super Ljava/lang/Object;
.source "BaseModuleDevice.java"

# interfaces
.implements Lcom/android/camera/features/mode/IModuleDevice;


# static fields
.field public static final TAG:Ljava/lang/String; = "ModuleDevice"


# instance fields
.field public mModule:Lcom/android/camera/module/Module;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachModule(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/BaseModuleDevice;->mModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public final getModule()Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mode/BaseModuleDevice;->mModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
