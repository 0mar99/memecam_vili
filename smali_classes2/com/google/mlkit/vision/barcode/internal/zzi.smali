.class public final Lcom/google/mlkit/vision/barcode/internal/zzi;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# static fields
.field public static zza:Z

.field public static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field public final zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;

.field public final zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

.field public zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "MlKitContext can not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BarcodeScannerOptions can not be null"

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 20

    move-object/from16 v8, p0

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-direct {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    .line 2
    invoke-direct {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    if-eqz p5, :cond_0

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 4
    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result v2

    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    .line 5
    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getValueType()I

    move-result v1

    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v18, v0, p2

    new-instance v11, Lcom/google/mlkit/vision/barcode/internal/zzg;

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-object/from16 v4, p1

    move-object v5, v9

    move-object v6, v10

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/mlkit/vision/barcode/internal/zzg;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zznd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v0, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {v0, v11, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;-><init>()V

    move-object/from16 v1, p1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;

    sget-boolean v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;

    iget-object v2, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 10
    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;

    .line 12
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    move-result-object v14

    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzh;

    invoke-direct {v0, v8}, Lcom/google/mlkit/vision/barcode/internal/zzh;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;)V

    iget-object v12, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzbe:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    .line 13
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;

    move-object v11, v3

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Ljava/lang/Object;JLcom/google/mlkit/vision/barcode/internal/zzh;)V

    .line 14
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v0, 0x1

    iget-boolean v2, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    sub-long v11, v9, v18

    iget-object v4, v8, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;

    if-eq v0, v2, :cond_1

    const/16 v0, 0x5eed

    goto :goto_1

    :cond_1
    const/16 v0, 0x5eee

    :goto_1
    move v5, v0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zza()I

    move-result v6

    move-wide v7, v11

    .line 17
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;->zzc(IIJJ)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;-><init>()V

    iget-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;-><init>()V

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 3
    invoke-static {v3}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzc(JLcom/google/android/gms/internal/mlkit_vision_barcode/zznd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    .line 2
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    sget-boolean p1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmu;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzh(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    iget-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 7
    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    .line 9
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    .line 10
    invoke-virtual {p6}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p1

    sget-object p2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-virtual {p2, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;-><init>()V

    const/4 p4, -0x1

    if-eq p1, p4, :cond_4

    const/16 p4, 0x23

    if-eq p1, p4, :cond_3

    const p4, 0x32315659

    if-eq p1, p4, :cond_2

    const/16 p4, 0x10

    if-eq p1, p4, :cond_1

    const/16 p4, 0x11

    if-eq p1, p4, :cond_0

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_0

    .line 15
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_0

    .line 16
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    .line 17
    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;-><init>()V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz p0, :cond_5

    .line 20
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznr;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;-><init>()V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeb;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeb;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznf;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized zze(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object v8

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 5
    :try_start_2
    invoke-virtual {v8}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzV:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    :goto_0
    move-object v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    .line 9
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
