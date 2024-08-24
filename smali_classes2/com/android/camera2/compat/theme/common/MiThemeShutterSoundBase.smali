.class public Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;
.super Ljava/lang/Object;
.source "MiThemeShutterSoundBase.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAvailableSounds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/ShutterSound;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120334

    const-string v2, "default"

    const v3, 0x7f080997

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120333

    const-string v2, "art"

    const v3, 0x7f080996

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120336

    const-string v2, "old"

    const v3, 0x7f08099a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/android/camera/customization/ShutterSound;

    const v1, 0x7f120335

    const-string v2, "modern"

    const v3, 0x7f080999

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public loadFromSomewhere(IILandroid/media/SoundPool;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->getInstance()Lcom/android/camera/customization/ShutterSound;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/ShutterSound;->getsAvailableSounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/customization/ShutterSound;

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/customization/ShutterSound;->soundPath(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/camera/customization/ShutterSound;->loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I

    move-result p0

    return p0
.end method
