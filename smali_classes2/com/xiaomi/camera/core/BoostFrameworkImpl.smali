.class public Lcom/xiaomi/camera/core/BoostFrameworkImpl;
.super Ljava/lang/Object;
.source "BoostFrameworkImpl.java"

# interfaces
.implements Lcom/xiaomi/camera/core/BaseBoostFramework;


# static fields
.field public static final BOOST_CLASS_NAME_MTK:Ljava/lang/String; = "android.util.MtkBoostFramework"

.field public static final BOOST_CLASS_NAME_MTK_NEW:Ljava/lang/String; = "android.perf.MTKBoostFramework"

.field public static final BOOST_CLASS_NAME_QUALCOM:Ljava/lang/String; = "android.util.BoostFramework"

.field public static final BOOST_METHOD_NAME:Ljava/lang/String; = "perfLockAcquire"

.field public static final BOOST_STOP_NAME:Ljava/lang/String; = "perfLockRelease"

.field public static final TAG:Ljava/lang/String; = "BoostFrameworkImpl"

.field public static sBoostClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static sDefaultParams:[I

.field public static volatile sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field public static sStartBoost:Ljava/lang/reflect/Method;

.field public static sStopBoost:Ljava/lang/reflect/Method;


# instance fields
.field public final mBoostQcomPerfList:[I

.field public final mDefaultMtkPerfList:[I

.field public final mDefaultQComPerfList:[I

.field public final mPanoramaPerfList:[I

.field public mPerf:Ljava/lang/Object;

.field public final mVideoPerfList:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultQComPerfList:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultMtkPerfList:[I

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mVideoPerfList:[I

    const/16 v1, 0x14

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostQcomPerfList:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPanoramaPerfList:[I

    :try_start_0
    const-string v0, "android.util.MtkBoostFramework"

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    const-string v0, "android.perf.MTKBoostFramework"

    .line 9
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.util.BoostFramework"

    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sBoostClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    const-string v1, "perfLockAcquire"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 10
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [I

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    .line 11
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sBoostClass:Ljava/lang/Class;

    const-string v1, "perfLockRelease"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    .line 12
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sBoostClass:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    .line 15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo0o()[I

    move-result-object p0

    if-eqz p0, :cond_2

    .line 16
    sput-object p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoostFrameworkImpl#init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoostFrameworkImpl"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804200
        0xfff
    .end array-data

    :array_1
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0xfff
        0x40804000    # 4.0078125f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40804100
        0xfff
        0x40c20000    # 6.0625f
        0x14
        0x40c1c000    # 6.0546875f
        0x1e
    .end array-data

    :array_3
    .array-data 4
        0x40400001    # 3.0000002f
        0x1
        0x40c00000    # 6.0f
        0x1
        0x40804000    # 4.0078125f
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40804100
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804200
        0xfff
        0x40c44000    # 6.1328125f
        0x7
        0x40c3c000    # 6.1171875f
        0xf8
    .end array-data

    :array_4
    .array-data 4
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804200
        0xfff
    .end array-data
.end method

.method public static getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    return-object v0
.end method

.method private startBoostInternal(I[I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "BoostFrameworkImpl"

    if-nez v0, :cond_0

    const-string p0, "not init boost pref"

    .line 2
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-string v0, "ready to boost"

    .line 4
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object p2, v4, v3

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start boost exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method private stopBoostInternal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const-string v1, "BoostFrameworkImpl"

    if-nez v0, :cond_0

    const-string p0, "not init boost pref, not need to stop"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-string v0, "ready to stop boost"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop boost exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized startBoost(II)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BoostFrameworkImpl"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBoost: duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [I

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 2
    :pswitch_0
    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    if-eqz p2, :cond_0

    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    array-length p2, p2

    if-nez p2, :cond_2

    .line 3
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultMtkPerfList:[I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPanoramaPerfList:[I

    :goto_0
    sput-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    .line 4
    :cond_2
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    goto :goto_3

    .line 5
    :pswitch_1
    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    if-eqz p2, :cond_3

    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    array-length p2, p2

    if-nez p2, :cond_5

    .line 6
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultMtkPerfList:[I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostQcomPerfList:[I

    :goto_1
    sput-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    .line 7
    :cond_5
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    goto :goto_3

    .line 8
    :pswitch_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p2

    if-nez p2, :cond_6

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mVideoPerfList:[I

    goto :goto_3

    .line 10
    :cond_6
    :pswitch_3
    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    if-eqz p2, :cond_7

    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    array-length p2, p2

    if-nez p2, :cond_9

    .line 11
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultMtkPerfList:[I

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultQComPerfList:[I

    :goto_2
    sput-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    .line 12
    :cond_9
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    .line 13
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(I[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized startBoost(I[I)Z
    .locals 0

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoostInternal(I[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopBoost()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "BoostFrameworkImpl"

    const-string v1, "stopBoost"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoostInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
