.class public Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;
.super Ljava/lang/Object;
.source "PinnedHeaderItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lwka;

.field public b:I

.field public c:Z

.field public d:[I

.field public e:Z

.field public final f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/RenderNodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->f:I

    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic a(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->d:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic c(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic d(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic e(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Lwka;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->a:Lwka;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic f(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic g(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->f:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public h()Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;-><init>(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;Lctb;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public i(Ljava/util/List;)Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/RenderNodeItem;",
            ">;)",
            "Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs j([I)Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->d:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Lwka;)Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->a:Lwka;

    .line 2
    .line 3
    return-object p0
.end method
