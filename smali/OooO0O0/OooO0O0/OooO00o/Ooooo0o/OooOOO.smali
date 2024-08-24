.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOOO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOOO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOOO;

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

    invoke-static {p1}, Lcom/android/camera/log/FileLogger;->OooO00o(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
