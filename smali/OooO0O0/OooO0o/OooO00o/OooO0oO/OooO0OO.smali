.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;

    invoke-direct {v0}, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;-><init>()V

    sput-object v0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/camera/rx/CameraSchedulers;->OooO0O0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
