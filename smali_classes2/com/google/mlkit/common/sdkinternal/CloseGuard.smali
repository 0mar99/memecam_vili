.class public Lcom/google/mlkit/common/sdkinternal/CloseGuard;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;
    }
.end annotation


# static fields
.field public static final API_TRANSLATE:I = 0x1


# instance fields
.field public final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/mlkit/common/sdkinternal/Cleaner;Ljava/lang/Runnable;Lcom/google/android/gms/internal/mlkit_common/zzpn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zze;

    invoke-direct {v0, p0, p2, p5, p4}, Lcom/google/mlkit/common/sdkinternal/zze;-><init>(Lcom/google/mlkit/common/sdkinternal/CloseGuard;ILcom/google/android/gms/internal/mlkit_common/zzpn;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzc:Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzc:Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    .line 2
    invoke-interface {p0}, Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;->clean()V

    return-void
.end method

.method public final synthetic zza(ILcom/google/android/gms/internal/mlkit_common/zzpn;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzb:Ljava/lang/String;

    aput-object p0, v1, v2

    const-string p0, "%s has not been closed"

    .line 2
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MlKitCloseGuard"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzle;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzkz;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzky;->zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzky;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzkz;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzky;)Lcom/google/android/gms/internal/mlkit_common/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzkz;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzlb;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzle;->zzh(Lcom/google/android/gms/internal/mlkit_common/zzlb;)Lcom/google/android/gms/internal/mlkit_common/zzle;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzpq;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzle;)Lcom/google/android/gms/internal/mlkit_common/zzpe;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzld;->zzbE:Lcom/google/android/gms/internal/mlkit_common/zzld;

    .line 6
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzd(Lcom/google/android/gms/internal/mlkit_common/zzpe;Lcom/google/android/gms/internal/mlkit_common/zzld;)V

    .line 7
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
