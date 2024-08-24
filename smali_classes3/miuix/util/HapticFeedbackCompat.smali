.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field public static final PHYSICAL_EMULATION_REASON:Ljava/lang/String; = "USAGE_PHYSICAL_EMULATION"

.field public static final RTP_MIN_VALUE:I = 0x0

.field public static final RTP_V1_MAX_VALUE:I = 0xa0

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackCompat"

.field public static mAvailable:Z

.field public static mCanCheckExtHaptic:Z

.field public static mCanStop:Z

.field public static mExtHapticAlways:Z

.field public static mIsSupportExtHapticWithReason:Z

.field public static mIsSupportHapticWithReason:Z

.field public static final sSingleThread:Ljava/util/concurrent/Executor;


# instance fields
.field public hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "performExtHapticFeedback"

    const-string v2, "HapticFeedbackCompat"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 2
    sget v3, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v5

    sput-boolean v5, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    const-string v6, "MIUI Haptic Implementation is not available"

    .line 4
    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 6
    :goto_0
    sget-boolean v5, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 7
    :try_start_1
    const-class v7, Lmiui/util/HapticFeedbackUtil;

    const-string v8, "performHapticFeedback"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    aput-object v0, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    sput-boolean v4, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    const-string v8, "Not support haptic with reason"

    .line 9
    invoke-static {v2, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 11
    :goto_1
    :try_start_2
    const-class v7, Lmiui/util/HapticFeedbackUtil;

    const-string v8, "isSupportExtHapticFeedback"

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    sput-boolean v4, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 13
    :catchall_2
    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    .line 14
    :goto_2
    :try_start_3
    const-class v7, Lmiui/util/HapticFeedbackUtil;

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v7, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    sput-boolean v4, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 16
    :catchall_3
    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    .line 17
    :goto_3
    :try_start_4
    const-class v7, Lmiui/util/HapticFeedbackUtil;

    const-string v8, "stop"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    sput-boolean v4, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 19
    :catchall_4
    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    .line 20
    :goto_4
    :try_start_5
    const-class v7, Lmiui/util/HapticFeedbackUtil;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v0, v5, v6

    invoke-virtual {v7, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    sput-boolean v4, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    const-string v1, "Not support ext haptic with reason"

    .line 22
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    :cond_0
    :goto_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "HapticFeedbackCompat"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1

    const-string p0, "linear motor is not supported in this platform."

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public performEmulationExtHaptic(ID)Z
    .locals 1

    const-string v0, "USAGE_PHYSICAL_EMULATION"

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(IDLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public performEmulationHaptic(ID)Z
    .locals 1

    const-string v0, "USAGE_PHYSICAL_EMULATION"

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public performExtHapticFeedback(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(IDLjava/lang/String;)Z
    .locals 1

    .line 17
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IDLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(II)Z
    .locals 4

    .line 3
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_1

    .line 4
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(II)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(IIZ)Z
    .locals 4

    .line 11
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 12
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 13
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    .line 14
    invoke-virtual {v0, p1, p2, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IIZ)Z

    move-result p0

    return p0

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 16
    :cond_2
    invoke-virtual {p0, p2, p3}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(IZ)Z

    move-result p0

    return p0
.end method

.method public performExtHapticFeedback(IZ)Z
    .locals 2

    .line 7
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 8
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 9
    invoke-virtual {v0, p1, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    move-result p0

    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;)Z
    .locals 0

    .line 23
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;Z)Z
    .locals 2

    .line 19
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 20
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 21
    invoke-virtual {v0, p1, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;Z)Z

    move-result p0

    return p0

    .line 22
    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IZ)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(IDLjava/lang/String;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 13
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(II)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 6
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, v1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public performHapticFeedback(IIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p3, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 9
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedbackAsync(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/util/HapticFeedbackCompat$1;

    invoke-direct {v1, p0, p1}, Lmiuix/util/HapticFeedbackCompat$1;-><init>(Lmiuix/util/HapticFeedbackCompat;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_1

    .line 2
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->stop()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public supportKeyboardIntensity()Z
    .locals 1

    const-string p0, "sys.haptic.intensityforkeyboard"

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public supportLinearMotor()Z
    .locals 0

    .line 1
    sget-boolean p0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    return p0
.end method

.method public supportLinearMotorWithReason()Z
    .locals 0

    .line 1
    sget-boolean p0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    return p0
.end method
