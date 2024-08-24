.class public Lcom/android/camera/db/greendao/SaveTaskDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SaveTaskDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/db/greendao/SaveTaskDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/camera/db/element/SaveTask;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "tasks"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/camera/db/greendao/DaoSession;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"tasks\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,\"start_time\" INTEGER,\"media_store_id\" INTEGER,\"media_path\" TEXT,\"progress_status\" INTEGER NOT NULL,\"progress_percentage\" INTEGER NOT NULL,\"jpeg_rotation\" INTEGER NOT NULL,\"no_gaussian\" INTEGER NOT NULL,\"application_id\" INTEGER NOT NULL,\"thumbnail_path\" TEXT,\"size\" INTEGER,\"mime_type\" TEXT,\"date_taken\" INTEGER,\"width\" INTEGER,\"height\" INTEGER,\"bucket_id\" TEXT,\"progress_anim_type\" INTEGER);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"tasks\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/camera/db/element/SaveTask;)V
    .locals 3

    .line 28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 29
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getStartTime()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 32
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 33
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 35
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/4 p0, 0x5

    .line 37
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getStatus()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x6

    .line 38
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPercentage()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x7

    .line 39
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getJpegRotation()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    .line 40
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getNoGaussian()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x9

    .line 41
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getApplicationId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 42
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getThumbnailPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 v0, 0xa

    .line 43
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/16 p0, 0xb

    .line 44
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getMimeType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 v0, 0xc

    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 p0, 0xd

    .line 47
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getDateTaken()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 48
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xf

    .line 49
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getHeight()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 50
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getBucketId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const/16 v0, 0x10

    .line 51
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 p0, 0x11

    .line 52
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getProgressAnimType()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/greendao/SaveTaskDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/camera/db/element/SaveTask;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/camera/db/element/SaveTask;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getStartTime()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 11
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/4 p0, 0x5

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getStatus()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 p0, 0x6

    .line 13
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPercentage()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 p0, 0x7

    .line 14
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getJpegRotation()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    .line 15
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getNoGaussian()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 p0, 0x9

    .line 16
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getApplicationId()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 17
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getThumbnailPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 v0, 0xa

    .line 18
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/16 p0, 0xb

    .line 19
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getSize()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 20
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getMimeType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 v0, 0xc

    .line 21
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 p0, 0xd

    .line 22
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getDateTaken()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 23
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 p0, 0xf

    .line 24
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getHeight()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 25
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getBucketId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const/16 v0, 0x10

    .line 26
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 p0, 0x11

    .line 27
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getProgressAnimType()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/greendao/SaveTaskDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/camera/db/element/SaveTask;)V

    return-void
.end method

.method public getKey(Lcom/android/camera/db/element/SaveTask;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/db/element/SaveTask;->getId()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1}, Lcom/android/camera/db/greendao/SaveTaskDao;->getKey(Lcom/android/camera/db/element/SaveTask;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hasKey(Lcom/android/camera/db/element/SaveTask;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/db/element/SaveTask;->getId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1}, Lcom/android/camera/db/greendao/SaveTaskDao;->hasKey(Lcom/android/camera/db/element/SaveTask;)Z

    move-result p0

    return p0
.end method

.method public final isEntityUpdateable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/camera/db/element/SaveTask;
    .locals 23

    move-object/from16 v0, p1

    .line 3
    new-instance v20, Lcom/android/camera/db/element/SaveTask;

    add-int/lit8 v1, p2, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    add-int/lit8 v6, p2, 0x4

    .line 8
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x5

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 10
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x7

    .line 11
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 12
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 13
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_4
    add-int/lit8 v12, p2, 0xa

    .line 14
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_5

    move-wide v12, v14

    goto :goto_5

    :cond_5
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :goto_5
    add-int/lit8 v3, p2, 0xb

    .line 15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_6
    add-int/lit8 v3, p2, 0xc

    .line 16
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :goto_7
    add-int/lit8 v3, p2, 0xd

    .line 17
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_8

    move/from16 v17, v18

    goto :goto_8

    :cond_8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v17, v3

    :goto_8
    add-int/lit8 v3, p2, 0xe

    .line 18
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_9

    move/from16 v19, v18

    goto :goto_9

    :cond_9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v19, v3

    :goto_9
    add-int/lit8 v3, p2, 0xf

    .line 19
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_a
    add-int/lit8 v3, p2, 0x10

    .line 20
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v22, v18

    goto :goto_b

    :cond_b
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v22, v0

    :goto_b
    move-object/from16 v0, v20

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-wide v11, v12

    move-object/from16 v13, v16

    move/from16 v16, v17

    move/from16 v17, v19

    move-object/from16 v18, v21

    move/from16 v19, v22

    invoke-direct/range {v0 .. v19}, Lcom/android/camera/db/element/SaveTask;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IIIIILjava/lang/String;JLjava/lang/String;JIILjava/lang/String;I)V

    return-object v20
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/greendao/SaveTaskDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/camera/db/element/SaveTask;

    move-result-object p0

    return-object p0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/camera/db/element/SaveTask;I)V
    .locals 6

    add-int/lit8 p0, p3, 0x0

    .line 21
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setId(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x1

    .line 22
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setStartTime(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x2

    .line 23
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p0, v1

    goto :goto_2

    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x3

    .line 24
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, v1

    goto :goto_3

    :cond_3
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x4

    .line 25
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setStatus(I)V

    add-int/lit8 p0, p3, 0x5

    .line 26
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setPercentage(I)V

    add-int/lit8 p0, p3, 0x6

    .line 27
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setJpegRotation(I)V

    add-int/lit8 p0, p3, 0x7

    .line 28
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setNoGaussian(I)V

    add-int/lit8 p0, p3, 0x8

    .line 29
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setApplicationId(I)V

    add-int/lit8 p0, p3, 0x9

    .line 30
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p0, v1

    goto :goto_4

    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setThumbnailPath(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0xa

    .line 31
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    move-wide v4, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_5
    invoke-virtual {p2, v4, v5}, Lcom/android/camera/db/element/SaveTask;->setSize(J)V

    add-int/lit8 p0, p3, 0xb

    .line 32
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object p0, v1

    goto :goto_6

    :cond_6
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setMimeType(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0xc

    .line 33
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_7
    invoke-virtual {p2, v2, v3}, Lcom/android/camera/db/element/SaveTask;->setDateTaken(J)V

    add-int/lit8 p0, p3, 0xd

    .line 34
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move p0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    :goto_8
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setWidth(I)V

    add-int/lit8 p0, p3, 0xe

    .line 35
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move p0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    :goto_9
    invoke-virtual {p2, p0}, Lcom/android/camera/db/element/SaveTask;->setHeight(I)V

    add-int/lit8 p0, p3, 0xf

    .line 36
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {p2, v1}, Lcom/android/camera/db/element/SaveTask;->setBucketId(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x10

    .line 37
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_b

    :cond_b
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_b
    invoke-virtual {p2, v2}, Lcom/android/camera/db/element/SaveTask;->setProgressAnimType(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/db/greendao/SaveTaskDao;->readEntity(Landroid/database/Cursor;Lcom/android/camera/db/element/SaveTask;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    add-int/lit8 p2, p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/greendao/SaveTaskDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final updateKeyAfterInsert(Lcom/android/camera/db/element/SaveTask;J)Ljava/lang/Long;
    .locals 0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/db/element/SaveTask;->setId(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/db/greendao/SaveTaskDao;->updateKeyAfterInsert(Lcom/android/camera/db/element/SaveTask;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
