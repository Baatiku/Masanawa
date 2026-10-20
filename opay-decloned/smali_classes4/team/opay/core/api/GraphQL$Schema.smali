.class public final Lteam/opay/core/api/GraphQL$Schema;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Schema"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b5\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0003\u0008\u00cf\u0001\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00f5\u0006\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0002\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0002\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0002\u0012\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u0002\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010*\u001a\u0004\u0018\u00010)\u0012\u0008\u0010+\u001a\u0004\u0018\u00010)\u0012\u0008\u0010,\u001a\u0004\u0018\u00010)\u0012\u0008\u0010-\u001a\u0004\u0018\u00010)\u0012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u0002\u0012\u0008\u00100\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u00103\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u00104\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u00106\u001a\u0004\u0018\u000105\u0012\u0008\u00107\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u00109\u001a\u0004\u0018\u000108\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010\u0002\u0012\u0008\u0010<\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010>\u001a\u0004\u0018\u00010=\u0012\u000e\u0010@\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u0002\u0012\u0008\u0010A\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010C\u001a\u0004\u0018\u00010B\u0012\u0008\u0010E\u001a\u0004\u0018\u00010D\u0012\u0008\u0010F\u001a\u0004\u0018\u00010D\u0012\u000e\u0010H\u001a\n\u0012\u0004\u0012\u00020G\u0018\u00010\u0002\u0012\u0008\u0010J\u001a\u0004\u0018\u00010I\u0012\u0008\u0010L\u001a\u0004\u0018\u00010K\u0012\u0008\u0010N\u001a\u0004\u0018\u00010M\u0012\u0008\u0010O\u001a\u0004\u0018\u00010K\u0012\u0008\u0010P\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010Q\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010R\u001a\u0004\u0018\u00010K\u0012\u0008\u0010T\u001a\u0004\u0018\u00010S\u0012\u0008\u0010V\u001a\u0004\u0018\u00010U\u0012\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010\u0002\u0012\u0008\u0010Z\u001a\u0004\u0018\u00010Y\u0012\u0008\u0010[\u001a\u0004\u0018\u00010\u0011\u0012\u000e\u0010]\u001a\n\u0012\u0004\u0012\u00020\\\u0018\u00010\u0002\u0012\u0008\u0010_\u001a\u0004\u0018\u00010^\u0012\u0006\u0010a\u001a\u00020`\u0012\u0008\u0010c\u001a\u0004\u0018\u00010b\u0012\u0008\u0010d\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010e\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010g\u001a\u0004\u0018\u00010f\u0012\u0008\u0010i\u001a\u0004\u0018\u00010h\u0012\u0008\u0010k\u001a\u0004\u0018\u00010j\u0012\u0008\u0010l\u001a\u0004\u0018\u00010\u0011\u0012\u000e\u0010m\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u0002\u0012\u0008\u0010n\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010p\u001a\u0004\u0018\u00010o\u0012\u0008\u0010r\u001a\u0004\u0018\u00010q\u0012\u0008\u0010t\u001a\u0004\u0018\u00010s\u0012\u0008\u0010v\u001a\u0004\u0018\u00010u\u0012\u0008\u0010w\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010x\u001a\u0004\u0018\u00010\u0016\u0012\u000e\u0010z\u001a\n\u0012\u0004\u0012\u00020y\u0018\u00010\u0002\u0012\u0008\u0010{\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008|\u0010}J\u0010\u0010~\u001a\u00020\u0016H\u00d6\u0001\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0013\u0010\u0080\u0001\u001a\u00020hH\u00d6\u0001\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u001e\u0010\u0083\u0001\u001a\u00020\u00112\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001R(\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R&\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0089\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u0088\u0001R&\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008b\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u0088\u0001R&\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008d\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u0088\u0001R&\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008f\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0088\u0001R&\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0091\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0088\u0001R&\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0093\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0088\u0001R \u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001R \u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0099\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u0098\u0001R&\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0087\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u009b\u0001\u0010\u0088\u0001R\u001f\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001\u001a\u0005\u0008\u009e\u0001\u0010\u007fR \u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008a\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R \u0010\u001a\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a2\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a1\u0001R&\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a4\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008f\u0001\u0010\u0088\u0001R&\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a5\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0088\u0001R \u0010 \u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\u001a\u0006\u0008\u00a2\u0001\u0010\u00a8\u0001R\u001f\u0010!\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00a9\u0001\u0010\u009d\u0001\u001a\u0005\u0008\u00aa\u0001\u0010\u007fR\u001f\u0010\"\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00ab\u0001\u0010\u009d\u0001\u001a\u0005\u0008\u00ac\u0001\u0010\u007fR \u0010#\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ad\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u0098\u0001R \u0010$\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u0098\u0001R \u0010%\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b1\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u0098\u0001R \u0010\'\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u008b\u0001\u0010\u00b4\u0001R \u0010(\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b5\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00b6\u0001\u0010\u0098\u0001R \u0010*\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00b9\u0001R \u0010+\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ba\u0001\u0010\u00b8\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u00b9\u0001R \u0010,\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00bb\u0001\u0010\u00b8\u0001\u001a\u0006\u0008\u0085\u0001\u0010\u00b9\u0001R \u0010-\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00bc\u0001\u0010\u00b8\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u00b9\u0001R&\u0010/\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00bd\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u0088\u0001R \u00100\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00bf\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00c0\u0001\u0010\u00a1\u0001R \u00101\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00c1\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00c2\u0001\u0010\u00a1\u0001R \u00102\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00c3\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00a1\u0001R \u00103\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u00c7\u0001R\u001f\u00104\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00c8\u0001\u0010\u009d\u0001\u001a\u0005\u0008\u00c9\u0001\u0010\u007fR \u00106\u001a\u0004\u0018\u0001058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R \u00107\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ce\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00cf\u0001\u0010\u0098\u0001R \u00109\u001a\u0004\u0018\u0001088\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001\u001a\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001R&\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d4\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u00d5\u0001\u0010\u0088\u0001R\u001f\u0010<\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00d6\u0001\u0010\u009d\u0001\u001a\u0005\u0008\u00d7\u0001\u0010\u007fR \u0010>\u001a\u0004\u0018\u00010=8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001\u001a\u0006\u0008\u00da\u0001\u0010\u00db\u0001R&\u0010@\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00dc\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u00dd\u0001\u0010\u0088\u0001R\u001f\u0010A\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00de\u0001\u0010\u009d\u0001\u001a\u0005\u0008\u00df\u0001\u0010\u007fR \u0010C\u001a\u0004\u0018\u00010B8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001\u001a\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R \u0010E\u001a\u0004\u0018\u00010D8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001\u001a\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001R \u0010F\u001a\u0004\u0018\u00010D8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00e8\u0001\u0010\u00e5\u0001\u001a\u0006\u0008\u00e9\u0001\u0010\u00e7\u0001R&\u0010H\u001a\n\u0012\u0004\u0012\u00020G\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ea\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u00eb\u0001\u0010\u0088\u0001R \u0010J\u001a\u0004\u0018\u00010I8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001\u001a\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001R \u0010L\u001a\u0004\u0018\u00010K8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001\u001a\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001R \u0010N\u001a\u0004\u0018\u00010M8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00f4\u0001\u0010\u00f5\u0001\u001a\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R \u0010O\u001a\u0004\u0018\u00010K8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00f8\u0001\u0010\u00f1\u0001\u001a\u0006\u0008\u00f9\u0001\u0010\u00f3\u0001R \u0010P\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00fa\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00fb\u0001\u0010\u0098\u0001R \u0010Q\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00fc\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00fd\u0001\u0010\u0098\u0001R \u0010R\u001a\u0004\u0018\u00010K8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00fe\u0001\u0010\u00f1\u0001\u001a\u0006\u0008\u00ff\u0001\u0010\u00f3\u0001R \u0010T\u001a\u0004\u0018\u00010S8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0080\u0002\u0010\u0081\u0002\u001a\u0006\u0008\u0082\u0002\u0010\u0083\u0002R \u0010V\u001a\u0004\u0018\u00010U8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0084\u0002\u0010\u0085\u0002\u001a\u0006\u0008\u0086\u0002\u0010\u0087\u0002R&\u0010X\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0088\u0002\u0010\u0086\u0001\u001a\u0006\u0008\u0089\u0002\u0010\u0088\u0001R \u0010Z\u001a\u0004\u0018\u00010Y8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008a\u0002\u0010\u008b\u0002\u001a\u0006\u0008\u008c\u0002\u0010\u008d\u0002R \u0010[\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u008e\u0002\u0010\u0096\u0001\u001a\u0006\u0008\u008f\u0002\u0010\u0098\u0001R&\u0010]\u001a\n\u0012\u0004\u0012\u00020\\\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0002\u0010\u0086\u0001\u001a\u0006\u0008\u0091\u0002\u0010\u0088\u0001R \u0010_\u001a\u0004\u0018\u00010^8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0002\u0010\u0093\u0002\u001a\u0006\u0008\u00a4\u0001\u0010\u0094\u0002R\u001e\u0010a\u001a\u00020`8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0002\u0010\u0096\u0002\u001a\u0006\u0008\u0097\u0002\u0010\u0098\u0002R \u0010c\u001a\u0004\u0018\u00010b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0099\u0002\u0010\u009a\u0002\u001a\u0006\u0008\u009b\u0002\u0010\u009c\u0002R \u0010d\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u009d\u0002\u0010\u0096\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u0098\u0001R\u001f\u0010e\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u009e\u0002\u0010\u009d\u0001\u001a\u0005\u0008\u009f\u0002\u0010\u007fR \u0010g\u001a\u0004\u0018\u00010f8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a0\u0002\u0010\u00a1\u0002\u001a\u0006\u0008\u0091\u0001\u0010\u00a2\u0002R \u0010i\u001a\u0004\u0018\u00010h8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a3\u0002\u0010\u00a4\u0002\u001a\u0006\u0008\u00a5\u0002\u0010\u00a6\u0002R \u0010k\u001a\u0004\u0018\u00010j8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00a7\u0002\u0010\u00a8\u0002\u001a\u0006\u0008\u00a9\u0002\u0010\u00aa\u0002R \u0010l\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ab\u0002\u0010\u0096\u0001\u001a\u0006\u0008\u00ac\u0002\u0010\u0098\u0001R&\u0010m\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00ad\u0002\u0010\u0086\u0001\u001a\u0006\u0008\u00ae\u0002\u0010\u0088\u0001R\u001f\u0010n\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00af\u0002\u0010\u0096\u0001\u001a\u0005\u0008n\u0010\u0098\u0001R \u0010p\u001a\u0004\u0018\u00010o8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b0\u0002\u0010\u00b1\u0002\u001a\u0006\u0008\u00b2\u0002\u0010\u00b3\u0002R \u0010r\u001a\u0004\u0018\u00010q8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b4\u0002\u0010\u00b5\u0002\u001a\u0006\u0008\u00b6\u0002\u0010\u00b7\u0002R \u0010t\u001a\u0004\u0018\u00010s8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00b8\u0002\u0010\u00b9\u0002\u001a\u0006\u0008\u00ba\u0002\u0010\u00bb\u0002R \u0010v\u001a\u0004\u0018\u00010u8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00bc\u0002\u0010\u00bd\u0002\u001a\u0006\u0008\u00be\u0002\u0010\u00bf\u0002R\u001f\u0010w\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00c0\u0002\u0010\u009d\u0001\u001a\u0005\u0008\u00c1\u0002\u0010\u007fR\u001f\u0010x\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00c2\u0002\u0010\u009d\u0001\u001a\u0005\u0008\u00c3\u0002\u0010\u007fR&\u0010z\u001a\n\u0012\u0004\u0012\u00020y\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00c4\u0002\u0010\u0086\u0001\u001a\u0006\u0008\u00c5\u0002\u0010\u0088\u0001R \u0010{\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00c6\u0002\u0010\u0096\u0001\u001a\u0006\u0008\u00c7\u0002\u0010\u0098\u0001\u00a8\u0006\u00c8\u0002"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$Schema;",
        "",
        "",
        "Lteam/opay/core/api/GraphQL$Service;",
        "services",
        "Lteam/opay/core/api/GraphQL$TermsAndConditions;",
        "termsAndConditionsList",
        "Lteam/opay/core/api/GraphQL$KycLimit;",
        "kycLimits",
        "Lteam/opay/core/api/GraphQL$Bundle;",
        "bundles",
        "Lteam/opay/core/api/GraphQL$Bank;",
        "banks",
        "Lteam/opay/core/api/GraphQL$ElectricityPaymentPlan;",
        "plans",
        "Lteam/opay/core/api/GraphQL$Message;",
        "messages",
        "",
        "messageConsumed",
        "moneyRequested",
        "Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;",
        "savedInstruments",
        "",
        "newOrderId",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "orderStatus",
        "orderWithStatus",
        "Lteam/opay/core/api/GraphQL$Country;",
        "countries",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "currencies",
        "Lteam/opay/core/api/GraphQL$User;",
        "user",
        "loginId",
        "deleteAccountId",
        "logoutResult",
        "otpAccepted",
        "bvnVerified",
        "Lteam/opay/core/api/GraphQL$BvnInfo;",
        "bvnInfo",
        "instrumentAdded",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "walletBalance",
        "bonusBalance",
        "ajiraBalance",
        "oWealth",
        "Lteam/opay/core/api/GraphQL$UserTransaction;",
        "userTransactions",
        "orderInputOtp",
        "orderInputPhone",
        "orderInputPin",
        "currency",
        "lookupBankAccount",
        "Lteam/opay/core/api/GraphQL$OPayAccountUser;",
        "lookupOPayAccount",
        "instrumentDeleted",
        "Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;",
        "gatewayBankPaymentFields",
        "Lteam/opay/core/api/GraphQL$DataOperator;",
        "dataBundles",
        "order3DSecure",
        "Lteam/opay/core/api/GraphQL$ElectricityAccountName;",
        "lookupElectricityCustomer",
        "Lteam/opay/core/api/GraphQL$ElectricityService;",
        "electricityServices",
        "electricityToken",
        "Lteam/opay/core/api/GraphQL$StartimesUser;",
        "lookupStartimesUser",
        "Lteam/opay/core/api/GraphQL$PayuUserData;",
        "lookupTvAccount",
        "upgradeTvBouquet",
        "Lteam/opay/core/api/GraphQL$TVServices;",
        "tvServices",
        "Lteam/opay/core/api/GraphQL$AuthState;",
        "userPinAuth",
        "Lteam/opay/core/api/GraphQL$AccessToken;",
        "verifyPin",
        "Lteam/opay/core/api/GraphQL$AuthOtpData;",
        "pinAuthVerifyOtp",
        "createPin",
        "initiatePinReset",
        "resendVerificationEmail",
        "finalizePinReset",
        "Lteam/opay/core/api/GraphQL$OrderFee;",
        "orderFee",
        "Lteam/opay/core/api/GraphQL$GatewayCreateResult;",
        "gatewayCreate",
        "Lteam/opay/core/api/GraphQL$EasycashBank;",
        "easycashBanks",
        "Lteam/opay/core/api/GraphQL$FacValidationResult;",
        "validateFAC",
        "userAccountStatement",
        "Lteam/opay/core/api/GraphQL$RegionInfo;",
        "regions",
        "Lteam/opay/core/api/GraphQL$UserProfile;",
        "userProfile",
        "Lteam/opay/core/api/GraphQL$Cashback;",
        "cashback",
        "Lteam/opay/core/api/GraphQL$CalculateInterest;",
        "investAccount",
        "setUserProperty",
        "getUserProperty",
        "Lteam/opay/core/api/GraphQL$CouponsInfo;",
        "coupons",
        "",
        "couponsCount",
        "Lteam/opay/core/api/GraphQL$BetUser;",
        "lookupBettingUser",
        "acceptServiceTermsAndConditions",
        "userTransactions2",
        "isFcmTokenRegistered",
        "Lteam/opay/core/api/GraphQL$ElementConfigMap;",
        "elementConfigMap",
        "Lteam/opay/core/api/ActivityInfo;",
        "activityInfo",
        "Lteam/opay/core/api/GraphQL$SearchIndexInfo;",
        "searchIndexInfo",
        "Lteam/opay/core/api/GraphQL$InvestResult;",
        "investResult",
        "day30Earning",
        "day7Earning",
        "Lteam/opay/core/api/GraphQL$SearchRecordInfo;",
        "searchResult",
        "bvnState",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$OrderStatus;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/GraphQL$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$BvnInfo;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$Currency;Ljava/lang/String;Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ElectricityAccountName;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/api/GraphQL$StartimesUser;Lteam/opay/core/api/GraphQL$PayuUserData;Lteam/opay/core/api/GraphQL$PayuUserData;Ljava/util/List;Lteam/opay/core/api/GraphQL$AuthState;Lteam/opay/core/api/GraphQL$AccessToken;Lteam/opay/core/api/GraphQL$AuthOtpData;Lteam/opay/core/api/GraphQL$AccessToken;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$AccessToken;Lteam/opay/core/api/GraphQL$OrderFee;Lteam/opay/core/api/GraphQL$GatewayCreateResult;Ljava/util/List;Lteam/opay/core/api/GraphQL$FacValidationResult;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$UserProfile;Lteam/opay/core/api/GraphQL$Cashback;Lteam/opay/core/api/GraphQL$CalculateInterest;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CouponsInfo;Ljava/lang/Integer;Lteam/opay/core/api/GraphQL$BetUser;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$ElementConfigMap;Lteam/opay/core/api/ActivityInfo;Lteam/opay/core/api/GraphQL$SearchIndexInfo;Lteam/opay/core/api/GraphQL$InvestResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/util/List;",
        "j",
        "()Ljava/util/List;",
        "b",
        "l",
        "c",
        "getKycLimits",
        "d",
        "getBundles",
        "e",
        "getBanks",
        "f",
        "getPlans",
        "g",
        "getMessages",
        "h",
        "Ljava/lang/Boolean;",
        "getMessageConsumed",
        "()Ljava/lang/Boolean;",
        "i",
        "getMoneyRequested",
        "getSavedInstruments",
        "k",
        "Ljava/lang/String;",
        "getNewOrderId",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "getOrderStatus",
        "()Lteam/opay/core/api/GraphQL$OrderStatus;",
        "m",
        "getOrderWithStatus",
        "n",
        "o",
        "p",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "q",
        "getLoginId",
        "r",
        "getDeleteAccountId",
        "s",
        "getLogoutResult",
        "t",
        "getOtpAccepted",
        "u",
        "v",
        "Lteam/opay/core/api/GraphQL$BvnInfo;",
        "()Lteam/opay/core/api/GraphQL$BvnInfo;",
        "w",
        "getInstrumentAdded",
        "x",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "y",
        "z",
        "A",
        "B",
        "getUserTransactions",
        "C",
        "getOrderInputOtp",
        "D",
        "getOrderInputPhone",
        "E",
        "getOrderInputPin",
        "F",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "G",
        "getLookupBankAccount",
        "H",
        "Lteam/opay/core/api/GraphQL$OPayAccountUser;",
        "getLookupOPayAccount",
        "()Lteam/opay/core/api/GraphQL$OPayAccountUser;",
        "I",
        "getInstrumentDeleted",
        "J",
        "Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;",
        "getGatewayBankPaymentFields",
        "()Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;",
        "K",
        "getDataBundles",
        "L",
        "getOrder3DSecure",
        "M",
        "Lteam/opay/core/api/GraphQL$ElectricityAccountName;",
        "getLookupElectricityCustomer",
        "()Lteam/opay/core/api/GraphQL$ElectricityAccountName;",
        "N",
        "getElectricityServices",
        "O",
        "getElectricityToken",
        "P",
        "Lteam/opay/core/api/GraphQL$StartimesUser;",
        "getLookupStartimesUser",
        "()Lteam/opay/core/api/GraphQL$StartimesUser;",
        "Q",
        "Lteam/opay/core/api/GraphQL$PayuUserData;",
        "getLookupTvAccount",
        "()Lteam/opay/core/api/GraphQL$PayuUserData;",
        "R",
        "getUpgradeTvBouquet",
        "S",
        "getTvServices",
        "T",
        "Lteam/opay/core/api/GraphQL$AuthState;",
        "getUserPinAuth",
        "()Lteam/opay/core/api/GraphQL$AuthState;",
        "U",
        "Lteam/opay/core/api/GraphQL$AccessToken;",
        "getVerifyPin",
        "()Lteam/opay/core/api/GraphQL$AccessToken;",
        "V",
        "Lteam/opay/core/api/GraphQL$AuthOtpData;",
        "getPinAuthVerifyOtp",
        "()Lteam/opay/core/api/GraphQL$AuthOtpData;",
        "W",
        "getCreatePin",
        "X",
        "getInitiatePinReset",
        "Y",
        "getResendVerificationEmail",
        "Z",
        "getFinalizePinReset",
        "a0",
        "Lteam/opay/core/api/GraphQL$OrderFee;",
        "getOrderFee",
        "()Lteam/opay/core/api/GraphQL$OrderFee;",
        "b0",
        "Lteam/opay/core/api/GraphQL$GatewayCreateResult;",
        "getGatewayCreate",
        "()Lteam/opay/core/api/GraphQL$GatewayCreateResult;",
        "c0",
        "getEasycashBanks",
        "d0",
        "Lteam/opay/core/api/GraphQL$FacValidationResult;",
        "getValidateFAC",
        "()Lteam/opay/core/api/GraphQL$FacValidationResult;",
        "e0",
        "getUserAccountStatement",
        "f0",
        "getRegions",
        "g0",
        "Lteam/opay/core/api/GraphQL$UserProfile;",
        "()Lteam/opay/core/api/GraphQL$UserProfile;",
        "h0",
        "Lteam/opay/core/api/GraphQL$Cashback;",
        "getCashback",
        "()Lteam/opay/core/api/GraphQL$Cashback;",
        "i0",
        "Lteam/opay/core/api/GraphQL$CalculateInterest;",
        "getInvestAccount",
        "()Lteam/opay/core/api/GraphQL$CalculateInterest;",
        "j0",
        "k0",
        "getGetUserProperty",
        "l0",
        "Lteam/opay/core/api/GraphQL$CouponsInfo;",
        "()Lteam/opay/core/api/GraphQL$CouponsInfo;",
        "m0",
        "Ljava/lang/Integer;",
        "getCouponsCount",
        "()Ljava/lang/Integer;",
        "n0",
        "Lteam/opay/core/api/GraphQL$BetUser;",
        "getLookupBettingUser",
        "()Lteam/opay/core/api/GraphQL$BetUser;",
        "o0",
        "getAcceptServiceTermsAndConditions",
        "p0",
        "getUserTransactions2",
        "q0",
        "r0",
        "Lteam/opay/core/api/GraphQL$ElementConfigMap;",
        "getElementConfigMap",
        "()Lteam/opay/core/api/GraphQL$ElementConfigMap;",
        "s0",
        "Lteam/opay/core/api/ActivityInfo;",
        "getActivityInfo",
        "()Lteam/opay/core/api/ActivityInfo;",
        "t0",
        "Lteam/opay/core/api/GraphQL$SearchIndexInfo;",
        "getSearchIndexInfo",
        "()Lteam/opay/core/api/GraphQL$SearchIndexInfo;",
        "u0",
        "Lteam/opay/core/api/GraphQL$InvestResult;",
        "getInvestResult",
        "()Lteam/opay/core/api/GraphQL$InvestResult;",
        "v0",
        "getDay30Earning",
        "w0",
        "getDay7Earning",
        "x0",
        "getSearchResult",
        "y0",
        "getBvnState",
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
.field private final A:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owealthBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final B:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userTransactions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$UserTransaction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final C:Lteam/opay/core/api/GraphQL$OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderInputOTP"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final D:Lteam/opay/core/api/GraphQL$OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderInputPhone"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final E:Lteam/opay/core/api/GraphQL$OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderInputPIN"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final F:Lteam/opay/core/api/GraphQL$Currency;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final G:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupBankAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final H:Lteam/opay/core/api/GraphQL$OPayAccountUser;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupOPayAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final I:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deleteInstrument"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final J:Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gatewayBankPaymentFields"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final K:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataBundles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$DataOperator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final L:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order3DSecure"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final M:Lteam/opay/core/api/GraphQL$ElectricityAccountName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupElectricityCustomer"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final N:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "electricityServices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ElectricityService;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final O:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "electricityToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final P:Lteam/opay/core/api/GraphQL$StartimesUser;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupStartimesUser"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Q:Lteam/opay/core/api/GraphQL$PayuUserData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupTVAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final R:Lteam/opay/core/api/GraphQL$PayuUserData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upgradeTVBouquet"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final S:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tvServices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$TVServices;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final T:Lteam/opay/core/api/GraphQL$AuthState;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userPinAuth"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final U:Lteam/opay/core/api/GraphQL$AccessToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verifyPIN"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final V:Lteam/opay/core/api/GraphQL$AuthOtpData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pinAuthVerifyOTP"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final W:Lteam/opay/core/api/GraphQL$AccessToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createPIN"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final X:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "initiatePINReset"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Y:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resendVerificationEmail"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Z:Lteam/opay/core/api/GraphQL$AccessToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finalizePINReset"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "services"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final a0:Lteam/opay/core/api/GraphQL$OrderFee;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderFee"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "termsAndConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$TermsAndConditions;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b0:Lteam/opay/core/api/GraphQL$GatewayCreateResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gatewayCreate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kycLimits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c0:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "easyCashBanks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$EasycashBank;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "airtimeBundles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d0:Lteam/opay/core/api/GraphQL$FacValidationResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validateFAC"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Bank;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e0:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userAccountStatement"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentPlans"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ElectricityPaymentPlan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f0:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RegionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Message;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g0:Lteam/opay/core/api/GraphQL$UserProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userProfile"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consumeMessage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h0:Lteam/opay/core/api/GraphQL$Cashback;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashback"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestMoney"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i0:Lteam/opay/core/api/GraphQL$CalculateInterest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "calculateInterest"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instruments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j0:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "setUserProperty"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k0:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "getUserProperty"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Lteam/opay/core/api/GraphQL$OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderStatus"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l0:Lteam/opay/core/api/GraphQL$CouponsInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coupons"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Lteam/opay/core/api/GraphQL$OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderWithStatus"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m0:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numberOfunshownCoupons"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n0:Lteam/opay/core/api/GraphQL$BetUser;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupBettingUser"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currencies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Currency;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o0:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acceptServiceTermsAndConditions"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Lteam/opay/core/api/GraphQL$User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentUser"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p0:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "investmentList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$UserTransaction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authenticate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q0:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pushToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deleteAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r0:Lteam/opay/core/api/GraphQL$ElementConfigMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "elementConfigMap"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logout"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s0:Lteam/opay/core/api/ActivityInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activity"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verifyOTP"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t0:Lteam/opay/core/api/GraphQL$SearchIndexInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "searchIndexInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validateBVN"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u0:Lteam/opay/core/api/GraphQL$InvestResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "confirmSubscribe",
            "prepareRedeem",
            "confirmRedeem"
        }
        value = "prepareSubscribe"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v:Lteam/opay/core/api/GraphQL$BvnInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookupBVN"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v0:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day30Earning"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addInstrument"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w0:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day7Earning"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x0:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lists"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$SearchRecordInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final y:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletBonus"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final y0:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final z:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletAjira"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$OrderStatus;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/GraphQL$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$BvnInfo;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$OrderStatus;Lteam/opay/core/api/GraphQL$Currency;Ljava/lang/String;Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ElectricityAccountName;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/api/GraphQL$StartimesUser;Lteam/opay/core/api/GraphQL$PayuUserData;Lteam/opay/core/api/GraphQL$PayuUserData;Ljava/util/List;Lteam/opay/core/api/GraphQL$AuthState;Lteam/opay/core/api/GraphQL$AccessToken;Lteam/opay/core/api/GraphQL$AuthOtpData;Lteam/opay/core/api/GraphQL$AccessToken;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$AccessToken;Lteam/opay/core/api/GraphQL$OrderFee;Lteam/opay/core/api/GraphQL$GatewayCreateResult;Ljava/util/List;Lteam/opay/core/api/GraphQL$FacValidationResult;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$UserProfile;Lteam/opay/core/api/GraphQL$Cashback;Lteam/opay/core/api/GraphQL$CalculateInterest;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CouponsInfo;Ljava/lang/Integer;Lteam/opay/core/api/GraphQL$BetUser;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$ElementConfigMap;Lteam/opay/core/api/ActivityInfo;Lteam/opay/core/api/GraphQL$SearchIndexInfo;Lteam/opay/core/api/GraphQL$InvestResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
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
    .param p12    # Lteam/opay/core/api/GraphQL$OrderStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/api/GraphQL$OrderStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Lteam/opay/core/api/GraphQL$User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Lteam/opay/core/api/GraphQL$BvnInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Lteam/opay/core/api/GraphQL$OrderStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Lteam/opay/core/api/GraphQL$OrderStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Lteam/opay/core/api/GraphQL$OrderStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Lteam/opay/core/api/GraphQL$Currency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Lteam/opay/core/api/GraphQL$OPayAccountUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Lteam/opay/core/api/GraphQL$ElectricityAccountName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Lteam/opay/core/api/GraphQL$StartimesUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Lteam/opay/core/api/GraphQL$PayuUserData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Lteam/opay/core/api/GraphQL$PayuUserData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Lteam/opay/core/api/GraphQL$AuthState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Lteam/opay/core/api/GraphQL$AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Lteam/opay/core/api/GraphQL$AuthOtpData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Lteam/opay/core/api/GraphQL$AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p52    # Lteam/opay/core/api/GraphQL$AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p53    # Lteam/opay/core/api/GraphQL$OrderFee;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p54    # Lteam/opay/core/api/GraphQL$GatewayCreateResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p55    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p56    # Lteam/opay/core/api/GraphQL$FacValidationResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p57    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p58    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p59    # Lteam/opay/core/api/GraphQL$UserProfile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p60    # Lteam/opay/core/api/GraphQL$Cashback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p61    # Lteam/opay/core/api/GraphQL$CalculateInterest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p62    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p63    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p64    # Lteam/opay/core/api/GraphQL$CouponsInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p65    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p66    # Lteam/opay/core/api/GraphQL$BetUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p67    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p68    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p69    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p70    # Lteam/opay/core/api/GraphQL$ElementConfigMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p71    # Lteam/opay/core/api/ActivityInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p72    # Lteam/opay/core/api/GraphQL$SearchIndexInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p73    # Lteam/opay/core/api/GraphQL$InvestResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p74    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p75    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p76    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p77    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Service;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$TermsAndConditions;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Bundle;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Bank;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ElectricityPaymentPlan;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Message;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;",
            ">;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Country;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Currency;",
            ">;",
            "Lteam/opay/core/api/GraphQL$User;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$BvnInfo;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$UserTransaction;",
            ">;",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            "Lteam/opay/core/api/GraphQL$Currency;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$OPayAccountUser;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$DataOperator;",
            ">;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$ElectricityAccountName;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ElectricityService;",
            ">;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$StartimesUser;",
            "Lteam/opay/core/api/GraphQL$PayuUserData;",
            "Lteam/opay/core/api/GraphQL$PayuUserData;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$TVServices;",
            ">;",
            "Lteam/opay/core/api/GraphQL$AuthState;",
            "Lteam/opay/core/api/GraphQL$AccessToken;",
            "Lteam/opay/core/api/GraphQL$AuthOtpData;",
            "Lteam/opay/core/api/GraphQL$AccessToken;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$AccessToken;",
            "Lteam/opay/core/api/GraphQL$OrderFee;",
            "Lteam/opay/core/api/GraphQL$GatewayCreateResult;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$EasycashBank;",
            ">;",
            "Lteam/opay/core/api/GraphQL$FacValidationResult;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RegionInfo;",
            ">;",
            "Lteam/opay/core/api/GraphQL$UserProfile;",
            "Lteam/opay/core/api/GraphQL$Cashback;",
            "Lteam/opay/core/api/GraphQL$CalculateInterest;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CouponsInfo;",
            "Ljava/lang/Integer;",
            "Lteam/opay/core/api/GraphQL$BetUser;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$UserTransaction;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$ElementConfigMap;",
            "Lteam/opay/core/api/ActivityInfo;",
            "Lteam/opay/core/api/GraphQL$SearchIndexInfo;",
            "Lteam/opay/core/api/GraphQL$InvestResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$SearchRecordInfo;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p60

    const-string v2, "cashback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->a:Ljava/util/List;

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->b:Ljava/util/List;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->c:Ljava/util/List;

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->d:Ljava/util/List;

    move-object v2, p5

    .line 6
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->e:Ljava/util/List;

    move-object v2, p6

    .line 7
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->f:Ljava/util/List;

    move-object v2, p7

    .line 8
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->g:Ljava/util/List;

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->h:Ljava/lang/Boolean;

    move-object v2, p9

    .line 10
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->i:Ljava/lang/Boolean;

    move-object v2, p10

    .line 11
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->j:Ljava/util/List;

    move-object v2, p11

    .line 12
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->k:Ljava/lang/String;

    move-object v2, p12

    .line 13
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->l:Lteam/opay/core/api/GraphQL$OrderStatus;

    move-object/from16 v2, p13

    .line 14
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->m:Lteam/opay/core/api/GraphQL$OrderStatus;

    move-object/from16 v2, p14

    .line 15
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->n:Ljava/util/List;

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->o:Ljava/util/List;

    move-object/from16 v2, p16

    .line 17
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->p:Lteam/opay/core/api/GraphQL$User;

    move-object/from16 v2, p17

    .line 18
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->q:Ljava/lang/String;

    move-object/from16 v2, p18

    .line 19
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->r:Ljava/lang/String;

    move-object/from16 v2, p19

    .line 20
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->s:Ljava/lang/Boolean;

    move-object/from16 v2, p20

    .line 21
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->t:Ljava/lang/Boolean;

    move-object/from16 v2, p21

    .line 22
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->u:Ljava/lang/Boolean;

    move-object/from16 v2, p22

    .line 23
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->v:Lteam/opay/core/api/GraphQL$BvnInfo;

    move-object/from16 v2, p23

    .line 24
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->w:Ljava/lang/Boolean;

    move-object/from16 v2, p24

    .line 25
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v2, p25

    .line 26
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v2, p26

    .line 27
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v2, p27

    .line 28
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->A:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v2, p28

    .line 29
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->B:Ljava/util/List;

    move-object/from16 v2, p29

    .line 30
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->C:Lteam/opay/core/api/GraphQL$OrderStatus;

    move-object/from16 v2, p30

    .line 31
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->D:Lteam/opay/core/api/GraphQL$OrderStatus;

    move-object/from16 v2, p31

    .line 32
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->E:Lteam/opay/core/api/GraphQL$OrderStatus;

    move-object/from16 v2, p32

    .line 33
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->F:Lteam/opay/core/api/GraphQL$Currency;

    move-object/from16 v2, p33

    .line 34
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->G:Ljava/lang/String;

    move-object/from16 v2, p34

    .line 35
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->H:Lteam/opay/core/api/GraphQL$OPayAccountUser;

    move-object/from16 v2, p35

    .line 36
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->I:Ljava/lang/Boolean;

    move-object/from16 v2, p36

    .line 37
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->J:Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;

    move-object/from16 v2, p37

    .line 38
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->K:Ljava/util/List;

    move-object/from16 v2, p38

    .line 39
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->L:Ljava/lang/String;

    move-object/from16 v2, p39

    .line 40
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->M:Lteam/opay/core/api/GraphQL$ElectricityAccountName;

    move-object/from16 v2, p40

    .line 41
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->N:Ljava/util/List;

    move-object/from16 v2, p41

    .line 42
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->O:Ljava/lang/String;

    move-object/from16 v2, p42

    .line 43
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->P:Lteam/opay/core/api/GraphQL$StartimesUser;

    move-object/from16 v2, p43

    .line 44
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->Q:Lteam/opay/core/api/GraphQL$PayuUserData;

    move-object/from16 v2, p44

    .line 45
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->R:Lteam/opay/core/api/GraphQL$PayuUserData;

    move-object/from16 v2, p45

    .line 46
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->S:Ljava/util/List;

    move-object/from16 v2, p46

    .line 47
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->T:Lteam/opay/core/api/GraphQL$AuthState;

    move-object/from16 v2, p47

    .line 48
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->U:Lteam/opay/core/api/GraphQL$AccessToken;

    move-object/from16 v2, p48

    .line 49
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->V:Lteam/opay/core/api/GraphQL$AuthOtpData;

    move-object/from16 v2, p49

    .line 50
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->W:Lteam/opay/core/api/GraphQL$AccessToken;

    move-object/from16 v2, p50

    .line 51
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->X:Ljava/lang/Boolean;

    move-object/from16 v2, p51

    .line 52
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->Y:Ljava/lang/Boolean;

    move-object/from16 v2, p52

    .line 53
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->Z:Lteam/opay/core/api/GraphQL$AccessToken;

    move-object/from16 v2, p53

    .line 54
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->a0:Lteam/opay/core/api/GraphQL$OrderFee;

    move-object/from16 v2, p54

    .line 55
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->b0:Lteam/opay/core/api/GraphQL$GatewayCreateResult;

    move-object/from16 v2, p55

    .line 56
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->c0:Ljava/util/List;

    move-object/from16 v2, p56

    .line 57
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->d0:Lteam/opay/core/api/GraphQL$FacValidationResult;

    move-object/from16 v2, p57

    .line 58
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->e0:Ljava/lang/Boolean;

    move-object/from16 v2, p58

    .line 59
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->f0:Ljava/util/List;

    move-object/from16 v2, p59

    .line 60
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->g0:Lteam/opay/core/api/GraphQL$UserProfile;

    .line 61
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->h0:Lteam/opay/core/api/GraphQL$Cashback;

    move-object/from16 v1, p61

    .line 62
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->i0:Lteam/opay/core/api/GraphQL$CalculateInterest;

    move-object/from16 v1, p62

    .line 63
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->j0:Ljava/lang/Boolean;

    move-object/from16 v1, p63

    .line 64
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->k0:Ljava/lang/String;

    move-object/from16 v1, p64

    .line 65
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->l0:Lteam/opay/core/api/GraphQL$CouponsInfo;

    move-object/from16 v1, p65

    .line 66
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->m0:Ljava/lang/Integer;

    move-object/from16 v1, p66

    .line 67
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->n0:Lteam/opay/core/api/GraphQL$BetUser;

    move-object/from16 v1, p67

    .line 68
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->o0:Ljava/lang/Boolean;

    move-object/from16 v1, p68

    .line 69
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->p0:Ljava/util/List;

    move-object/from16 v1, p69

    .line 70
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->q0:Ljava/lang/Boolean;

    move-object/from16 v1, p70

    .line 71
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->r0:Lteam/opay/core/api/GraphQL$ElementConfigMap;

    move-object/from16 v1, p71

    .line 72
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->s0:Lteam/opay/core/api/ActivityInfo;

    move-object/from16 v1, p72

    .line 73
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->t0:Lteam/opay/core/api/GraphQL$SearchIndexInfo;

    move-object/from16 v1, p73

    .line 74
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->u0:Lteam/opay/core/api/GraphQL$InvestResult;

    move-object/from16 v1, p74

    .line 75
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->v0:Ljava/lang/String;

    move-object/from16 v1, p75

    .line 76
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->w0:Ljava/lang/String;

    move-object/from16 v1, p76

    .line 77
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->x0:Ljava/util/List;

    move-object/from16 v1, p77

    .line 78
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->y0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lteam/opay/core/api/GraphQL$BvnInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->v:Lteam/opay/core/api/GraphQL$BvnInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->u:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->n:Ljava/util/List;

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

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lteam/opay/core/api/GraphQL$Schema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lteam/opay/core/api/GraphQL$Schema;

    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->a:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->b:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->c:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->d:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->e:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->f:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->g:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->h:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->j:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->k:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->l:Lteam/opay/core/api/GraphQL$OrderStatus;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->l:Lteam/opay/core/api/GraphQL$OrderStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->m:Lteam/opay/core/api/GraphQL$OrderStatus;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->m:Lteam/opay/core/api/GraphQL$OrderStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->n:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->n:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->o:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->o:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->p:Lteam/opay/core/api/GraphQL$User;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->p:Lteam/opay/core/api/GraphQL$User;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->q:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->r:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->s:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->s:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->t:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->t:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->u:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->u:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->v:Lteam/opay/core/api/GraphQL$BvnInfo;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->v:Lteam/opay/core/api/GraphQL$BvnInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->w:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->w:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->A:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->A:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->B:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->B:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->C:Lteam/opay/core/api/GraphQL$OrderStatus;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->C:Lteam/opay/core/api/GraphQL$OrderStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->D:Lteam/opay/core/api/GraphQL$OrderStatus;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->D:Lteam/opay/core/api/GraphQL$OrderStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->E:Lteam/opay/core/api/GraphQL$OrderStatus;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->E:Lteam/opay/core/api/GraphQL$OrderStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->F:Lteam/opay/core/api/GraphQL$Currency;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->F:Lteam/opay/core/api/GraphQL$Currency;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->G:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->G:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->H:Lteam/opay/core/api/GraphQL$OPayAccountUser;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->H:Lteam/opay/core/api/GraphQL$OPayAccountUser;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->I:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->I:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->J:Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->J:Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->K:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->K:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->L:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->L:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->M:Lteam/opay/core/api/GraphQL$ElectricityAccountName;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->M:Lteam/opay/core/api/GraphQL$ElectricityAccountName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->N:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->N:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->O:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->O:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->P:Lteam/opay/core/api/GraphQL$StartimesUser;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->P:Lteam/opay/core/api/GraphQL$StartimesUser;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->Q:Lteam/opay/core/api/GraphQL$PayuUserData;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->Q:Lteam/opay/core/api/GraphQL$PayuUserData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->R:Lteam/opay/core/api/GraphQL$PayuUserData;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->R:Lteam/opay/core/api/GraphQL$PayuUserData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->S:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->S:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->T:Lteam/opay/core/api/GraphQL$AuthState;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->T:Lteam/opay/core/api/GraphQL$AuthState;

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->U:Lteam/opay/core/api/GraphQL$AccessToken;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->U:Lteam/opay/core/api/GraphQL$AccessToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->V:Lteam/opay/core/api/GraphQL$AuthOtpData;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->V:Lteam/opay/core/api/GraphQL$AuthOtpData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->W:Lteam/opay/core/api/GraphQL$AccessToken;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->W:Lteam/opay/core/api/GraphQL$AccessToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->X:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->X:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->Y:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->Y:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->Z:Lteam/opay/core/api/GraphQL$AccessToken;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->Z:Lteam/opay/core/api/GraphQL$AccessToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->a0:Lteam/opay/core/api/GraphQL$OrderFee;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->a0:Lteam/opay/core/api/GraphQL$OrderFee;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->b0:Lteam/opay/core/api/GraphQL$GatewayCreateResult;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->b0:Lteam/opay/core/api/GraphQL$GatewayCreateResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->c0:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->c0:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->d0:Lteam/opay/core/api/GraphQL$FacValidationResult;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->d0:Lteam/opay/core/api/GraphQL$FacValidationResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->e0:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->e0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->f0:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->f0:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->g0:Lteam/opay/core/api/GraphQL$UserProfile;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->g0:Lteam/opay/core/api/GraphQL$UserProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->h0:Lteam/opay/core/api/GraphQL$Cashback;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->h0:Lteam/opay/core/api/GraphQL$Cashback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    :cond_3d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->i0:Lteam/opay/core/api/GraphQL$CalculateInterest;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->i0:Lteam/opay/core/api/GraphQL$CalculateInterest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->j0:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->j0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->k0:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->k0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v2

    :cond_40
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->l0:Lteam/opay/core/api/GraphQL$CouponsInfo;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->l0:Lteam/opay/core/api/GraphQL$CouponsInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->m0:Ljava/lang/Integer;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->m0:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->n0:Lteam/opay/core/api/GraphQL$BetUser;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->n0:Lteam/opay/core/api/GraphQL$BetUser;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->o0:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->o0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->p0:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->p0:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->q0:Ljava/lang/Boolean;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->q0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->r0:Lteam/opay/core/api/GraphQL$ElementConfigMap;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->r0:Lteam/opay/core/api/GraphQL$ElementConfigMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->s0:Lteam/opay/core/api/ActivityInfo;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->s0:Lteam/opay/core/api/ActivityInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->t0:Lteam/opay/core/api/GraphQL$SearchIndexInfo;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->t0:Lteam/opay/core/api/GraphQL$SearchIndexInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->u0:Lteam/opay/core/api/GraphQL$InvestResult;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->u0:Lteam/opay/core/api/GraphQL$InvestResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->v0:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->v0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->w0:Ljava/lang/String;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->w0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->x0:Ljava/util/List;

    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Schema;->x0:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Schema;->y0:Ljava/lang/Boolean;

    iget-object p1, p1, Lteam/opay/core/api/GraphQL$Schema;->y0:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final f()Lteam/opay/core/api/GraphQL$CouponsInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->l0:Lteam/opay/core/api/GraphQL$CouponsInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Currency;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->F:Lteam/opay/core/api/GraphQL$Currency;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->a:Ljava/util/List;

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->b:Ljava/util/List;

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->c:Ljava/util/List;

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->d:Ljava/util/List;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->e:Ljava/util/List;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->f:Ljava/util/List;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->g:Ljava/util/List;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->h:Ljava/lang/Boolean;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->i:Ljava/lang/Boolean;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->j:Ljava/util/List;

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->k:Ljava/lang/String;

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->l:Lteam/opay/core/api/GraphQL$OrderStatus;

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
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OrderStatus;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->m:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OrderStatus;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->n:Ljava/util/List;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->o:Ljava/util/List;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->p:Lteam/opay/core/api/GraphQL$User;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$User;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->q:Ljava/lang/String;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->r:Ljava/lang/String;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    const/4 v2, 0x0

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->s:Ljava/lang/Boolean;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->t:Ljava/lang/Boolean;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->u:Ljava/lang/Boolean;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->v:Lteam/opay/core/api/GraphQL$BvnInfo;

    .line 275
    .line 276
    if-nez v2, :cond_15

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    goto :goto_15

    .line 280
    :cond_15
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$BvnInfo;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_15
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->w:Ljava/lang/Boolean;

    .line 288
    .line 289
    if-nez v2, :cond_16

    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    goto :goto_16

    .line 293
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_16
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 301
    .line 302
    if-nez v2, :cond_17

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    goto :goto_17

    .line 306
    :cond_17
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_17
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 314
    .line 315
    if-nez v2, :cond_18

    .line 316
    .line 317
    const/4 v2, 0x0

    .line 318
    goto :goto_18

    .line 319
    :cond_18
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_18
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    .line 325
    .line 326
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 327
    .line 328
    if-nez v2, :cond_19

    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    goto :goto_19

    .line 332
    :cond_19
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_19
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    .line 338
    .line 339
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->A:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 340
    .line 341
    if-nez v2, :cond_1a

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    goto :goto_1a

    .line 345
    :cond_1a
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :goto_1a
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    .line 352
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->B:Ljava/util/List;

    .line 353
    .line 354
    if-nez v2, :cond_1b

    .line 355
    .line 356
    const/4 v2, 0x0

    .line 357
    goto :goto_1b

    .line 358
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_1b
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    .line 365
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->C:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 366
    .line 367
    if-nez v2, :cond_1c

    .line 368
    .line 369
    const/4 v2, 0x0

    .line 370
    goto :goto_1c

    .line 371
    :cond_1c
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OrderStatus;->hashCode()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    :goto_1c
    add-int/2addr v0, v2

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    .line 378
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->D:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 379
    .line 380
    if-nez v2, :cond_1d

    .line 381
    .line 382
    const/4 v2, 0x0

    .line 383
    goto :goto_1d

    .line 384
    :cond_1d
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OrderStatus;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    :goto_1d
    add-int/2addr v0, v2

    .line 389
    mul-int/lit8 v0, v0, 0x1f

    .line 390
    .line 391
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->E:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 392
    .line 393
    if-nez v2, :cond_1e

    .line 394
    .line 395
    const/4 v2, 0x0

    .line 396
    goto :goto_1e

    .line 397
    :cond_1e
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OrderStatus;->hashCode()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    :goto_1e
    add-int/2addr v0, v2

    .line 402
    mul-int/lit8 v0, v0, 0x1f

    .line 403
    .line 404
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->F:Lteam/opay/core/api/GraphQL$Currency;

    .line 405
    .line 406
    if-nez v2, :cond_1f

    .line 407
    .line 408
    const/4 v2, 0x0

    .line 409
    goto :goto_1f

    .line 410
    :cond_1f
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Currency;->hashCode()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    :goto_1f
    add-int/2addr v0, v2

    .line 415
    mul-int/lit8 v0, v0, 0x1f

    .line 416
    .line 417
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->G:Ljava/lang/String;

    .line 418
    .line 419
    if-nez v2, :cond_20

    .line 420
    .line 421
    const/4 v2, 0x0

    .line 422
    goto :goto_20

    .line 423
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    :goto_20
    add-int/2addr v0, v2

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    .line 429
    .line 430
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->H:Lteam/opay/core/api/GraphQL$OPayAccountUser;

    .line 431
    .line 432
    if-nez v2, :cond_21

    .line 433
    .line 434
    const/4 v2, 0x0

    .line 435
    goto :goto_21

    .line 436
    :cond_21
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OPayAccountUser;->hashCode()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    :goto_21
    add-int/2addr v0, v2

    .line 441
    mul-int/lit8 v0, v0, 0x1f

    .line 442
    .line 443
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->I:Ljava/lang/Boolean;

    .line 444
    .line 445
    if-nez v2, :cond_22

    .line 446
    .line 447
    const/4 v2, 0x0

    .line 448
    goto :goto_22

    .line 449
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    :goto_22
    add-int/2addr v0, v2

    .line 454
    mul-int/lit8 v0, v0, 0x1f

    .line 455
    .line 456
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->J:Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;

    .line 457
    .line 458
    if-nez v2, :cond_23

    .line 459
    .line 460
    const/4 v2, 0x0

    .line 461
    goto :goto_23

    .line 462
    :cond_23
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;->hashCode()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    :goto_23
    add-int/2addr v0, v2

    .line 467
    mul-int/lit8 v0, v0, 0x1f

    .line 468
    .line 469
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->K:Ljava/util/List;

    .line 470
    .line 471
    if-nez v2, :cond_24

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    goto :goto_24

    .line 475
    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    :goto_24
    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v0, v0, 0x1f

    .line 481
    .line 482
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->L:Ljava/lang/String;

    .line 483
    .line 484
    if-nez v2, :cond_25

    .line 485
    .line 486
    const/4 v2, 0x0

    .line 487
    goto :goto_25

    .line 488
    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    :goto_25
    add-int/2addr v0, v2

    .line 493
    mul-int/lit8 v0, v0, 0x1f

    .line 494
    .line 495
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->M:Lteam/opay/core/api/GraphQL$ElectricityAccountName;

    .line 496
    .line 497
    if-nez v2, :cond_26

    .line 498
    .line 499
    const/4 v2, 0x0

    .line 500
    goto :goto_26

    .line 501
    :cond_26
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ElectricityAccountName;->hashCode()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    :goto_26
    add-int/2addr v0, v2

    .line 506
    mul-int/lit8 v0, v0, 0x1f

    .line 507
    .line 508
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->N:Ljava/util/List;

    .line 509
    .line 510
    if-nez v2, :cond_27

    .line 511
    .line 512
    const/4 v2, 0x0

    .line 513
    goto :goto_27

    .line 514
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    :goto_27
    add-int/2addr v0, v2

    .line 519
    mul-int/lit8 v0, v0, 0x1f

    .line 520
    .line 521
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->O:Ljava/lang/String;

    .line 522
    .line 523
    if-nez v2, :cond_28

    .line 524
    .line 525
    const/4 v2, 0x0

    .line 526
    goto :goto_28

    .line 527
    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    :goto_28
    add-int/2addr v0, v2

    .line 532
    mul-int/lit8 v0, v0, 0x1f

    .line 533
    .line 534
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->P:Lteam/opay/core/api/GraphQL$StartimesUser;

    .line 535
    .line 536
    if-nez v2, :cond_29

    .line 537
    .line 538
    const/4 v2, 0x0

    .line 539
    goto :goto_29

    .line 540
    :cond_29
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$StartimesUser;->hashCode()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    :goto_29
    add-int/2addr v0, v2

    .line 545
    mul-int/lit8 v0, v0, 0x1f

    .line 546
    .line 547
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->Q:Lteam/opay/core/api/GraphQL$PayuUserData;

    .line 548
    .line 549
    if-nez v2, :cond_2a

    .line 550
    .line 551
    const/4 v2, 0x0

    .line 552
    goto :goto_2a

    .line 553
    :cond_2a
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$PayuUserData;->hashCode()I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    :goto_2a
    add-int/2addr v0, v2

    .line 558
    mul-int/lit8 v0, v0, 0x1f

    .line 559
    .line 560
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->R:Lteam/opay/core/api/GraphQL$PayuUserData;

    .line 561
    .line 562
    if-nez v2, :cond_2b

    .line 563
    .line 564
    const/4 v2, 0x0

    .line 565
    goto :goto_2b

    .line 566
    :cond_2b
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$PayuUserData;->hashCode()I

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    :goto_2b
    add-int/2addr v0, v2

    .line 571
    mul-int/lit8 v0, v0, 0x1f

    .line 572
    .line 573
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->S:Ljava/util/List;

    .line 574
    .line 575
    if-nez v2, :cond_2c

    .line 576
    .line 577
    const/4 v2, 0x0

    .line 578
    goto :goto_2c

    .line 579
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    :goto_2c
    add-int/2addr v0, v2

    .line 584
    mul-int/lit8 v0, v0, 0x1f

    .line 585
    .line 586
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->T:Lteam/opay/core/api/GraphQL$AuthState;

    .line 587
    .line 588
    if-nez v2, :cond_2d

    .line 589
    .line 590
    const/4 v2, 0x0

    .line 591
    goto :goto_2d

    .line 592
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    :goto_2d
    add-int/2addr v0, v2

    .line 597
    mul-int/lit8 v0, v0, 0x1f

    .line 598
    .line 599
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->U:Lteam/opay/core/api/GraphQL$AccessToken;

    .line 600
    .line 601
    if-nez v2, :cond_2e

    .line 602
    .line 603
    const/4 v2, 0x0

    .line 604
    goto :goto_2e

    .line 605
    :cond_2e
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$AccessToken;->hashCode()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    :goto_2e
    add-int/2addr v0, v2

    .line 610
    mul-int/lit8 v0, v0, 0x1f

    .line 611
    .line 612
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->V:Lteam/opay/core/api/GraphQL$AuthOtpData;

    .line 613
    .line 614
    if-nez v2, :cond_2f

    .line 615
    .line 616
    const/4 v2, 0x0

    .line 617
    goto :goto_2f

    .line 618
    :cond_2f
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$AuthOtpData;->hashCode()I

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    :goto_2f
    add-int/2addr v0, v2

    .line 623
    mul-int/lit8 v0, v0, 0x1f

    .line 624
    .line 625
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->W:Lteam/opay/core/api/GraphQL$AccessToken;

    .line 626
    .line 627
    if-nez v2, :cond_30

    .line 628
    .line 629
    const/4 v2, 0x0

    .line 630
    goto :goto_30

    .line 631
    :cond_30
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$AccessToken;->hashCode()I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    :goto_30
    add-int/2addr v0, v2

    .line 636
    mul-int/lit8 v0, v0, 0x1f

    .line 637
    .line 638
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->X:Ljava/lang/Boolean;

    .line 639
    .line 640
    if-nez v2, :cond_31

    .line 641
    .line 642
    const/4 v2, 0x0

    .line 643
    goto :goto_31

    .line 644
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    :goto_31
    add-int/2addr v0, v2

    .line 649
    mul-int/lit8 v0, v0, 0x1f

    .line 650
    .line 651
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->Y:Ljava/lang/Boolean;

    .line 652
    .line 653
    if-nez v2, :cond_32

    .line 654
    .line 655
    const/4 v2, 0x0

    .line 656
    goto :goto_32

    .line 657
    :cond_32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    :goto_32
    add-int/2addr v0, v2

    .line 662
    mul-int/lit8 v0, v0, 0x1f

    .line 663
    .line 664
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->Z:Lteam/opay/core/api/GraphQL$AccessToken;

    .line 665
    .line 666
    if-nez v2, :cond_33

    .line 667
    .line 668
    const/4 v2, 0x0

    .line 669
    goto :goto_33

    .line 670
    :cond_33
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$AccessToken;->hashCode()I

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    :goto_33
    add-int/2addr v0, v2

    .line 675
    mul-int/lit8 v0, v0, 0x1f

    .line 676
    .line 677
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->a0:Lteam/opay/core/api/GraphQL$OrderFee;

    .line 678
    .line 679
    if-nez v2, :cond_34

    .line 680
    .line 681
    const/4 v2, 0x0

    .line 682
    goto :goto_34

    .line 683
    :cond_34
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$OrderFee;->hashCode()I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    :goto_34
    add-int/2addr v0, v2

    .line 688
    mul-int/lit8 v0, v0, 0x1f

    .line 689
    .line 690
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->b0:Lteam/opay/core/api/GraphQL$GatewayCreateResult;

    .line 691
    .line 692
    if-nez v2, :cond_35

    .line 693
    .line 694
    const/4 v2, 0x0

    .line 695
    goto :goto_35

    .line 696
    :cond_35
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$GatewayCreateResult;->hashCode()I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    :goto_35
    add-int/2addr v0, v2

    .line 701
    mul-int/lit8 v0, v0, 0x1f

    .line 702
    .line 703
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->c0:Ljava/util/List;

    .line 704
    .line 705
    if-nez v2, :cond_36

    .line 706
    .line 707
    const/4 v2, 0x0

    .line 708
    goto :goto_36

    .line 709
    :cond_36
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    :goto_36
    add-int/2addr v0, v2

    .line 714
    mul-int/lit8 v0, v0, 0x1f

    .line 715
    .line 716
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->d0:Lteam/opay/core/api/GraphQL$FacValidationResult;

    .line 717
    .line 718
    if-nez v2, :cond_37

    .line 719
    .line 720
    const/4 v2, 0x0

    .line 721
    goto :goto_37

    .line 722
    :cond_37
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$FacValidationResult;->hashCode()I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    :goto_37
    add-int/2addr v0, v2

    .line 727
    mul-int/lit8 v0, v0, 0x1f

    .line 728
    .line 729
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->e0:Ljava/lang/Boolean;

    .line 730
    .line 731
    if-nez v2, :cond_38

    .line 732
    .line 733
    const/4 v2, 0x0

    .line 734
    goto :goto_38

    .line 735
    :cond_38
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    :goto_38
    add-int/2addr v0, v2

    .line 740
    mul-int/lit8 v0, v0, 0x1f

    .line 741
    .line 742
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->f0:Ljava/util/List;

    .line 743
    .line 744
    if-nez v2, :cond_39

    .line 745
    .line 746
    const/4 v2, 0x0

    .line 747
    goto :goto_39

    .line 748
    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    :goto_39
    add-int/2addr v0, v2

    .line 753
    mul-int/lit8 v0, v0, 0x1f

    .line 754
    .line 755
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->g0:Lteam/opay/core/api/GraphQL$UserProfile;

    .line 756
    .line 757
    if-nez v2, :cond_3a

    .line 758
    .line 759
    const/4 v2, 0x0

    .line 760
    goto :goto_3a

    .line 761
    :cond_3a
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$UserProfile;->hashCode()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    :goto_3a
    add-int/2addr v0, v2

    .line 766
    mul-int/lit8 v0, v0, 0x1f

    .line 767
    .line 768
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->h0:Lteam/opay/core/api/GraphQL$Cashback;

    .line 769
    .line 770
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Cashback;->hashCode()I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    add-int/2addr v0, v2

    .line 775
    mul-int/lit8 v0, v0, 0x1f

    .line 776
    .line 777
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->i0:Lteam/opay/core/api/GraphQL$CalculateInterest;

    .line 778
    .line 779
    if-nez v2, :cond_3b

    .line 780
    .line 781
    const/4 v2, 0x0

    .line 782
    goto :goto_3b

    .line 783
    :cond_3b
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CalculateInterest;->hashCode()I

    .line 784
    .line 785
    .line 786
    move-result v2

    .line 787
    :goto_3b
    add-int/2addr v0, v2

    .line 788
    mul-int/lit8 v0, v0, 0x1f

    .line 789
    .line 790
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->j0:Ljava/lang/Boolean;

    .line 791
    .line 792
    if-nez v2, :cond_3c

    .line 793
    .line 794
    const/4 v2, 0x0

    .line 795
    goto :goto_3c

    .line 796
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    :goto_3c
    add-int/2addr v0, v2

    .line 801
    mul-int/lit8 v0, v0, 0x1f

    .line 802
    .line 803
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->k0:Ljava/lang/String;

    .line 804
    .line 805
    if-nez v2, :cond_3d

    .line 806
    .line 807
    const/4 v2, 0x0

    .line 808
    goto :goto_3d

    .line 809
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    :goto_3d
    add-int/2addr v0, v2

    .line 814
    mul-int/lit8 v0, v0, 0x1f

    .line 815
    .line 816
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->l0:Lteam/opay/core/api/GraphQL$CouponsInfo;

    .line 817
    .line 818
    if-nez v2, :cond_3e

    .line 819
    .line 820
    const/4 v2, 0x0

    .line 821
    goto :goto_3e

    .line 822
    :cond_3e
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CouponsInfo;->hashCode()I

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    :goto_3e
    add-int/2addr v0, v2

    .line 827
    mul-int/lit8 v0, v0, 0x1f

    .line 828
    .line 829
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->m0:Ljava/lang/Integer;

    .line 830
    .line 831
    if-nez v2, :cond_3f

    .line 832
    .line 833
    const/4 v2, 0x0

    .line 834
    goto :goto_3f

    .line 835
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    :goto_3f
    add-int/2addr v0, v2

    .line 840
    mul-int/lit8 v0, v0, 0x1f

    .line 841
    .line 842
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->n0:Lteam/opay/core/api/GraphQL$BetUser;

    .line 843
    .line 844
    if-nez v2, :cond_40

    .line 845
    .line 846
    const/4 v2, 0x0

    .line 847
    goto :goto_40

    .line 848
    :cond_40
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$BetUser;->hashCode()I

    .line 849
    .line 850
    .line 851
    move-result v2

    .line 852
    :goto_40
    add-int/2addr v0, v2

    .line 853
    mul-int/lit8 v0, v0, 0x1f

    .line 854
    .line 855
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->o0:Ljava/lang/Boolean;

    .line 856
    .line 857
    if-nez v2, :cond_41

    .line 858
    .line 859
    const/4 v2, 0x0

    .line 860
    goto :goto_41

    .line 861
    :cond_41
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    :goto_41
    add-int/2addr v0, v2

    .line 866
    mul-int/lit8 v0, v0, 0x1f

    .line 867
    .line 868
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->p0:Ljava/util/List;

    .line 869
    .line 870
    if-nez v2, :cond_42

    .line 871
    .line 872
    const/4 v2, 0x0

    .line 873
    goto :goto_42

    .line 874
    :cond_42
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    :goto_42
    add-int/2addr v0, v2

    .line 879
    mul-int/lit8 v0, v0, 0x1f

    .line 880
    .line 881
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->q0:Ljava/lang/Boolean;

    .line 882
    .line 883
    if-nez v2, :cond_43

    .line 884
    .line 885
    const/4 v2, 0x0

    .line 886
    goto :goto_43

    .line 887
    :cond_43
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 888
    .line 889
    .line 890
    move-result v2

    .line 891
    :goto_43
    add-int/2addr v0, v2

    .line 892
    mul-int/lit8 v0, v0, 0x1f

    .line 893
    .line 894
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->r0:Lteam/opay/core/api/GraphQL$ElementConfigMap;

    .line 895
    .line 896
    if-nez v2, :cond_44

    .line 897
    .line 898
    const/4 v2, 0x0

    .line 899
    goto :goto_44

    .line 900
    :cond_44
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ElementConfigMap;->hashCode()I

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    :goto_44
    add-int/2addr v0, v2

    .line 905
    mul-int/lit8 v0, v0, 0x1f

    .line 906
    .line 907
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->s0:Lteam/opay/core/api/ActivityInfo;

    .line 908
    .line 909
    if-nez v2, :cond_45

    .line 910
    .line 911
    const/4 v2, 0x0

    .line 912
    goto :goto_45

    .line 913
    :cond_45
    invoke-virtual {v2}, Lteam/opay/core/api/ActivityInfo;->hashCode()I

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    :goto_45
    add-int/2addr v0, v2

    .line 918
    mul-int/lit8 v0, v0, 0x1f

    .line 919
    .line 920
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->t0:Lteam/opay/core/api/GraphQL$SearchIndexInfo;

    .line 921
    .line 922
    if-nez v2, :cond_46

    .line 923
    .line 924
    const/4 v2, 0x0

    .line 925
    goto :goto_46

    .line 926
    :cond_46
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$SearchIndexInfo;->hashCode()I

    .line 927
    .line 928
    .line 929
    move-result v2

    .line 930
    :goto_46
    add-int/2addr v0, v2

    .line 931
    mul-int/lit8 v0, v0, 0x1f

    .line 932
    .line 933
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->u0:Lteam/opay/core/api/GraphQL$InvestResult;

    .line 934
    .line 935
    if-nez v2, :cond_47

    .line 936
    .line 937
    const/4 v2, 0x0

    .line 938
    goto :goto_47

    .line 939
    :cond_47
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$InvestResult;->hashCode()I

    .line 940
    .line 941
    .line 942
    move-result v2

    .line 943
    :goto_47
    add-int/2addr v0, v2

    .line 944
    mul-int/lit8 v0, v0, 0x1f

    .line 945
    .line 946
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->v0:Ljava/lang/String;

    .line 947
    .line 948
    if-nez v2, :cond_48

    .line 949
    .line 950
    const/4 v2, 0x0

    .line 951
    goto :goto_48

    .line 952
    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    :goto_48
    add-int/2addr v0, v2

    .line 957
    mul-int/lit8 v0, v0, 0x1f

    .line 958
    .line 959
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->w0:Ljava/lang/String;

    .line 960
    .line 961
    if-nez v2, :cond_49

    .line 962
    .line 963
    const/4 v2, 0x0

    .line 964
    goto :goto_49

    .line 965
    :cond_49
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    :goto_49
    add-int/2addr v0, v2

    .line 970
    mul-int/lit8 v0, v0, 0x1f

    .line 971
    .line 972
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->x0:Ljava/util/List;

    .line 973
    .line 974
    if-nez v2, :cond_4a

    .line 975
    .line 976
    const/4 v2, 0x0

    .line 977
    goto :goto_4a

    .line 978
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    :goto_4a
    add-int/2addr v0, v2

    .line 983
    mul-int/lit8 v0, v0, 0x1f

    .line 984
    .line 985
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Schema;->y0:Ljava/lang/Boolean;

    .line 986
    .line 987
    if-nez v2, :cond_4b

    .line 988
    .line 989
    goto :goto_4b

    .line 990
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    :goto_4b
    add-int/2addr v0, v1

    .line 995
    return v0
.end method

.method public final i()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->A:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->j0:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$TermsAndConditions;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->p:Lteam/opay/core/api/GraphQL$User;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lteam/opay/core/api/GraphQL$UserProfile;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->g0:Lteam/opay/core/api/GraphQL$UserProfile;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Schema;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 79
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/api/GraphQL$Schema;->a:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/core/api/GraphQL$Schema;->b:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/core/api/GraphQL$Schema;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/core/api/GraphQL$Schema;->d:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/core/api/GraphQL$Schema;->e:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/core/api/GraphQL$Schema;->f:Ljava/util/List;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/core/api/GraphQL$Schema;->g:Ljava/util/List;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/core/api/GraphQL$Schema;->h:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/core/api/GraphQL$Schema;->i:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/core/api/GraphQL$Schema;->j:Ljava/util/List;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/core/api/GraphQL$Schema;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/core/api/GraphQL$Schema;->l:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/core/api/GraphQL$Schema;->m:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/core/api/GraphQL$Schema;->n:Ljava/util/List;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->o:Ljava/util/List;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->p:Lteam/opay/core/api/GraphQL$User;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->q:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->r:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->s:Ljava/lang/Boolean;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->t:Ljava/lang/Boolean;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->u:Ljava/lang/Boolean;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->v:Lteam/opay/core/api/GraphQL$BvnInfo;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->w:Ljava/lang/Boolean;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->A:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->B:Ljava/util/List;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->C:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->D:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->E:Lteam/opay/core/api/GraphQL$OrderStatus;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->F:Lteam/opay/core/api/GraphQL$Currency;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->G:Ljava/lang/String;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->H:Lteam/opay/core/api/GraphQL$OPayAccountUser;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->I:Ljava/lang/Boolean;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->J:Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->K:Ljava/util/List;

    .line 120
    .line 121
    move-object/from16 v38, v15

    .line 122
    .line 123
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->L:Ljava/lang/String;

    .line 124
    .line 125
    move-object/from16 v39, v15

    .line 126
    .line 127
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->M:Lteam/opay/core/api/GraphQL$ElectricityAccountName;

    .line 128
    .line 129
    move-object/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->N:Ljava/util/List;

    .line 132
    .line 133
    move-object/from16 v41, v15

    .line 134
    .line 135
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->O:Ljava/lang/String;

    .line 136
    .line 137
    move-object/from16 v42, v15

    .line 138
    .line 139
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->P:Lteam/opay/core/api/GraphQL$StartimesUser;

    .line 140
    .line 141
    move-object/from16 v43, v15

    .line 142
    .line 143
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->Q:Lteam/opay/core/api/GraphQL$PayuUserData;

    .line 144
    .line 145
    move-object/from16 v44, v15

    .line 146
    .line 147
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->R:Lteam/opay/core/api/GraphQL$PayuUserData;

    .line 148
    .line 149
    move-object/from16 v45, v15

    .line 150
    .line 151
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->S:Ljava/util/List;

    .line 152
    .line 153
    move-object/from16 v46, v15

    .line 154
    .line 155
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->T:Lteam/opay/core/api/GraphQL$AuthState;

    .line 156
    .line 157
    move-object/from16 v47, v15

    .line 158
    .line 159
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->U:Lteam/opay/core/api/GraphQL$AccessToken;

    .line 160
    .line 161
    move-object/from16 v48, v15

    .line 162
    .line 163
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->V:Lteam/opay/core/api/GraphQL$AuthOtpData;

    .line 164
    .line 165
    move-object/from16 v49, v15

    .line 166
    .line 167
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->W:Lteam/opay/core/api/GraphQL$AccessToken;

    .line 168
    .line 169
    move-object/from16 v50, v15

    .line 170
    .line 171
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->X:Ljava/lang/Boolean;

    .line 172
    .line 173
    move-object/from16 v51, v15

    .line 174
    .line 175
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->Y:Ljava/lang/Boolean;

    .line 176
    .line 177
    move-object/from16 v52, v15

    .line 178
    .line 179
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->Z:Lteam/opay/core/api/GraphQL$AccessToken;

    .line 180
    .line 181
    move-object/from16 v53, v15

    .line 182
    .line 183
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->a0:Lteam/opay/core/api/GraphQL$OrderFee;

    .line 184
    .line 185
    move-object/from16 v54, v15

    .line 186
    .line 187
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->b0:Lteam/opay/core/api/GraphQL$GatewayCreateResult;

    .line 188
    .line 189
    move-object/from16 v55, v15

    .line 190
    .line 191
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->c0:Ljava/util/List;

    .line 192
    .line 193
    move-object/from16 v56, v15

    .line 194
    .line 195
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->d0:Lteam/opay/core/api/GraphQL$FacValidationResult;

    .line 196
    .line 197
    move-object/from16 v57, v15

    .line 198
    .line 199
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->e0:Ljava/lang/Boolean;

    .line 200
    .line 201
    move-object/from16 v58, v15

    .line 202
    .line 203
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->f0:Ljava/util/List;

    .line 204
    .line 205
    move-object/from16 v59, v15

    .line 206
    .line 207
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->g0:Lteam/opay/core/api/GraphQL$UserProfile;

    .line 208
    .line 209
    move-object/from16 v60, v15

    .line 210
    .line 211
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->h0:Lteam/opay/core/api/GraphQL$Cashback;

    .line 212
    .line 213
    move-object/from16 v61, v15

    .line 214
    .line 215
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->i0:Lteam/opay/core/api/GraphQL$CalculateInterest;

    .line 216
    .line 217
    move-object/from16 v62, v15

    .line 218
    .line 219
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->j0:Ljava/lang/Boolean;

    .line 220
    .line 221
    move-object/from16 v63, v15

    .line 222
    .line 223
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->k0:Ljava/lang/String;

    .line 224
    .line 225
    move-object/from16 v64, v15

    .line 226
    .line 227
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->l0:Lteam/opay/core/api/GraphQL$CouponsInfo;

    .line 228
    .line 229
    move-object/from16 v65, v15

    .line 230
    .line 231
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->m0:Ljava/lang/Integer;

    .line 232
    .line 233
    move-object/from16 v66, v15

    .line 234
    .line 235
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->n0:Lteam/opay/core/api/GraphQL$BetUser;

    .line 236
    .line 237
    move-object/from16 v67, v15

    .line 238
    .line 239
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->o0:Ljava/lang/Boolean;

    .line 240
    .line 241
    move-object/from16 v68, v15

    .line 242
    .line 243
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->p0:Ljava/util/List;

    .line 244
    .line 245
    move-object/from16 v69, v15

    .line 246
    .line 247
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->q0:Ljava/lang/Boolean;

    .line 248
    .line 249
    move-object/from16 v70, v15

    .line 250
    .line 251
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->r0:Lteam/opay/core/api/GraphQL$ElementConfigMap;

    .line 252
    .line 253
    move-object/from16 v71, v15

    .line 254
    .line 255
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->s0:Lteam/opay/core/api/ActivityInfo;

    .line 256
    .line 257
    move-object/from16 v72, v15

    .line 258
    .line 259
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->t0:Lteam/opay/core/api/GraphQL$SearchIndexInfo;

    .line 260
    .line 261
    move-object/from16 v73, v15

    .line 262
    .line 263
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->u0:Lteam/opay/core/api/GraphQL$InvestResult;

    .line 264
    .line 265
    move-object/from16 v74, v15

    .line 266
    .line 267
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->v0:Ljava/lang/String;

    .line 268
    .line 269
    move-object/from16 v75, v15

    .line 270
    .line 271
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->w0:Ljava/lang/String;

    .line 272
    .line 273
    move-object/from16 v76, v15

    .line 274
    .line 275
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->x0:Ljava/util/List;

    .line 276
    .line 277
    move-object/from16 v77, v15

    .line 278
    .line 279
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$Schema;->y0:Ljava/lang/Boolean;

    .line 280
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    move-object/from16 v78, v15

    .line 287
    .line 288
    const-string v15, "Schema(services="

    .line 289
    .line 290
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", termsAndConditionsList="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v1, ", kycLimits="

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, ", bundles="

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v1, ", banks="

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, ", plans="

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, ", messages="

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v1, ", messageConsumed="

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, ", moneyRequested="

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v1, ", savedInstruments="

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v1, ", newOrderId="

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v1, ", orderStatus="

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", orderWithStatus="

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, ", countries="

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, ", currencies="

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-object/from16 v1, v16

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v1, ", user="

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    move-object/from16 v1, v17

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v1, ", loginId="

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    move-object/from16 v1, v18

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v1, ", deleteAccountId="

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-object/from16 v1, v19

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v1, ", logoutResult="

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    move-object/from16 v1, v20

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, ", otpAccepted="

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    move-object/from16 v1, v21

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, ", bvnVerified="

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    move-object/from16 v1, v22

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v1, ", bvnInfo="

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    move-object/from16 v1, v23

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v1, ", instrumentAdded="

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    move-object/from16 v1, v24

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v1, ", walletBalance="

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    move-object/from16 v1, v25

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v1, ", bonusBalance="

    .line 501
    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    move-object/from16 v1, v26

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v1, ", ajiraBalance="

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    move-object/from16 v1, v27

    .line 516
    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v1, ", oWealth="

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    move-object/from16 v1, v28

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v1, ", userTransactions="

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    move-object/from16 v1, v29

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v1, ", orderInputOtp="

    .line 541
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    move-object/from16 v1, v30

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v1, ", orderInputPhone="

    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    move-object/from16 v1, v31

    .line 556
    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v1, ", orderInputPin="

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    move-object/from16 v1, v32

    .line 566
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v1, ", currency="

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    move-object/from16 v1, v33

    .line 576
    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v1, ", lookupBankAccount="

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    move-object/from16 v1, v34

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v1, ", lookupOPayAccount="

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    move-object/from16 v1, v35

    .line 596
    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v1, ", instrumentDeleted="

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    move-object/from16 v1, v36

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v1, ", gatewayBankPaymentFields="

    .line 611
    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    move-object/from16 v1, v37

    .line 616
    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v1, ", dataBundles="

    .line 621
    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    move-object/from16 v1, v38

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v1, ", order3DSecure="

    .line 631
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    move-object/from16 v1, v39

    .line 636
    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string v1, ", lookupElectricityCustomer="

    .line 641
    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    move-object/from16 v1, v40

    .line 646
    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    const-string v1, ", electricityServices="

    .line 651
    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    move-object/from16 v1, v41

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v1, ", electricityToken="

    .line 661
    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    move-object/from16 v1, v42

    .line 666
    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v1, ", lookupStartimesUser="

    .line 671
    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    move-object/from16 v1, v43

    .line 676
    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const-string v1, ", lookupTvAccount="

    .line 681
    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    move-object/from16 v1, v44

    .line 686
    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    const-string v1, ", upgradeTvBouquet="

    .line 691
    .line 692
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    move-object/from16 v1, v45

    .line 696
    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v1, ", tvServices="

    .line 701
    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    move-object/from16 v1, v46

    .line 706
    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v1, ", userPinAuth="

    .line 711
    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    move-object/from16 v1, v47

    .line 716
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v1, ", verifyPin="

    .line 721
    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    move-object/from16 v1, v48

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    const-string v1, ", pinAuthVerifyOtp="

    .line 731
    .line 732
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    move-object/from16 v1, v49

    .line 736
    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    const-string v1, ", createPin="

    .line 741
    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    move-object/from16 v1, v50

    .line 746
    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v1, ", initiatePinReset="

    .line 751
    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    move-object/from16 v1, v51

    .line 756
    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v1, ", resendVerificationEmail="

    .line 761
    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    move-object/from16 v1, v52

    .line 766
    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    const-string v1, ", finalizePinReset="

    .line 771
    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    move-object/from16 v1, v53

    .line 776
    .line 777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    const-string v1, ", orderFee="

    .line 781
    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    move-object/from16 v1, v54

    .line 786
    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    const-string v1, ", gatewayCreate="

    .line 791
    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    move-object/from16 v1, v55

    .line 796
    .line 797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    const-string v1, ", easycashBanks="

    .line 801
    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    move-object/from16 v1, v56

    .line 806
    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    const-string v1, ", validateFAC="

    .line 811
    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    move-object/from16 v1, v57

    .line 816
    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string v1, ", userAccountStatement="

    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    move-object/from16 v1, v58

    .line 826
    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v1, ", regions="

    .line 831
    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    move-object/from16 v1, v59

    .line 836
    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    const-string v1, ", userProfile="

    .line 841
    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    move-object/from16 v1, v60

    .line 846
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    const-string v1, ", cashback="

    .line 851
    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    move-object/from16 v1, v61

    .line 856
    .line 857
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v1, ", investAccount="

    .line 861
    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    move-object/from16 v1, v62

    .line 866
    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v1, ", setUserProperty="

    .line 871
    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    move-object/from16 v1, v63

    .line 876
    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v1, ", getUserProperty="

    .line 881
    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    move-object/from16 v1, v64

    .line 886
    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    const-string v1, ", coupons="

    .line 891
    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    move-object/from16 v1, v65

    .line 896
    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string v1, ", couponsCount="

    .line 901
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    move-object/from16 v1, v66

    .line 906
    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    const-string v1, ", lookupBettingUser="

    .line 911
    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    move-object/from16 v1, v67

    .line 916
    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    const-string v1, ", acceptServiceTermsAndConditions="

    .line 921
    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    move-object/from16 v1, v68

    .line 926
    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    const-string v1, ", userTransactions2="

    .line 931
    .line 932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    move-object/from16 v1, v69

    .line 936
    .line 937
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    const-string v1, ", isFcmTokenRegistered="

    .line 941
    .line 942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    move-object/from16 v1, v70

    .line 946
    .line 947
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    const-string v1, ", elementConfigMap="

    .line 951
    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    move-object/from16 v1, v71

    .line 956
    .line 957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    const-string v1, ", activityInfo="

    .line 961
    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    move-object/from16 v1, v72

    .line 966
    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    const-string v1, ", searchIndexInfo="

    .line 971
    .line 972
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    move-object/from16 v1, v73

    .line 976
    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    const-string v1, ", investResult="

    .line 981
    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    move-object/from16 v1, v74

    .line 986
    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v1, ", day30Earning="

    .line 991
    .line 992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    move-object/from16 v1, v75

    .line 996
    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    const-string v1, ", day7Earning="

    .line 1001
    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    move-object/from16 v1, v76

    .line 1006
    .line 1007
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    const-string v1, ", searchResult="

    .line 1011
    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    move-object/from16 v1, v77

    .line 1016
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    const-string v1, ", bvnState="

    .line 1021
    .line 1022
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    move-object/from16 v1, v78

    .line 1026
    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    const-string v1, ")"

    .line 1031
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    return-object v0
.end method
