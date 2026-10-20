.class public final Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;
.super Lteam/opay/pay/transfer/contact/TransferContactDao;
.source "TransferContactDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/transfer/contact/TransferContact;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lteam/opay/pay/transfer/contact/TransferContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactDao;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$a;-><init>(Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$b;-><init>(Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
