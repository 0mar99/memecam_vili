.class public final enum Lcom/google/mlkit/common/sdkinternal/zzh;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lcom/google/mlkit/common/sdkinternal/zzh;

.field public static final synthetic zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzh;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/sdkinternal/zzh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/mlkit/common/sdkinternal/zzh;

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/zzh;->zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/zzh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/zzh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/zzh;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p0

    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza(Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
