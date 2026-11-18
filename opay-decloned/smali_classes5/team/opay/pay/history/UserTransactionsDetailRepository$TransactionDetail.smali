.class public final Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;
.super Ljava/lang/Object;
.source "UserTransactionsDetailRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/history/UserTransactionsDetailRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionDetail"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00e9\u0001\u0012&\u0010\u0006\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012&\u0010\u0007\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012&\u0010\u0008\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R:\u0010\u0006\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R:\u0010\u0007\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010\"\u001a\u0004\u0008%\u0010$R:\u0010\u0008\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\"\u001a\u0004\u0008&\u0010$R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001c\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010(\u001a\u0004\u0008,\u0010*R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010(\u001a\u0004\u0008-\u0010*R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010(\u001a\u0004\u0008.\u0010*R\u001c\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010/\u001a\u0004\u00080\u0010\u0019R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u00101\u001a\u0004\u0008+\u00102R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u0008!\u00105R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010/\u001a\u0004\u00083\u0010\u0019R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00086\u0010/\u001a\u0004\u00086\u0010\u0019R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00087\u0010/\u001a\u0004\u0008\'\u0010\u0019\u00a8\u00068"
    }
    d2 = {
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;",
        "",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "Lkotlin/collections/LinkedHashMap;",
        "header",
        "body",
        "bottom",
        "date",
        "icon",
        "title",
        "headAmount",
        "notice",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;",
        "category",
        "",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;",
        "bankProgress",
        "tips",
        "transactionReceiptShowText",
        "bubble",
        "<init>",
        "(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/util/LinkedHashMap;",
        "h",
        "()Ljava/util/LinkedHashMap;",
        "b",
        "c",
        "d",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "f",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "e",
        "i",
        "k",
        "g",
        "Ljava/lang/String;",
        "getNotice",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;",
        "j",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "l",
        "m",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bodyMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tailMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "copywriting"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankProgress"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tips"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionReceiptShowText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bubble"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    iput-object p4, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 11
    .line 12
    iput-object p5, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 13
    .line 14
    iput-object p6, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 15
    .line 16
    iput-object p7, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 17
    .line 18
    iput-object p8, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;

    .line 21
    .line 22
    iput-object p10, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->j:Ljava/util/List;

    .line 23
    .line 24
    iput-object p11, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p12, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->l:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p13, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->m:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->a:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->a:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b:Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c:Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->j:Ljava/util/List;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->j:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->l:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->l:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->m:Ljava/lang/String;

    .line 146
    .line 147
    iget-object p1, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->m:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    return v0
.end method

.method public final f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->j:Ljava/util/List;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->l:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->m:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    goto :goto_c

    .line 162
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    :goto_c
    add-int/2addr v0, v1

    .line 167
    return v0
.end method

.method public final i()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->b:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->c:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->e:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->f:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->g:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->h:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->i:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionCategoryEntity;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->j:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->k:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->l:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetail;->m:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v13, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v14, "TransactionDetail(header="

    .line 33
    .line 34
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", body="

    .line 41
    .line 42
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", bottom="

    .line 49
    .line 50
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", date="

    .line 57
    .line 58
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", icon="

    .line 65
    .line 66
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", title="

    .line 73
    .line 74
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", headAmount="

    .line 81
    .line 82
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", notice="

    .line 89
    .line 90
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ", category="

    .line 97
    .line 98
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ", bankProgress="

    .line 105
    .line 106
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ", tips="

    .line 113
    .line 114
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, ", transactionReceiptShowText="

    .line 121
    .line 122
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ", bubble="

    .line 129
    .line 130
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ")"

    .line 137
    .line 138
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0
.end method
