.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooO0o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooO0o0;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooO0o0;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooO0o0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooO0o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->OooO00o(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
