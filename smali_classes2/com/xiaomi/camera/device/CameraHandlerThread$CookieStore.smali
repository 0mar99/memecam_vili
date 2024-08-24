.class public final Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CookieStore"
.end annotation


# instance fields
.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCookies:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V

    return-object v0
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCookies:Ljava/util/Map;

    sget-object v0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0O0;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0O0;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    return-object p0
.end method

.method public getCookies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCookies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
