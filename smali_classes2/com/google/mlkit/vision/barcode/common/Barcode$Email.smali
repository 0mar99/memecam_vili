.class public Lcom/google/mlkit/vision/barcode/common/Barcode$Email;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/common/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Email"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/barcode/common/Barcode$Email$FormatType;
    }
.end annotation


# static fields
.field public static final TYPE_HOME:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WORK:I = 0x1


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zza:I

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Email;->zza:I

    return p0
.end method
