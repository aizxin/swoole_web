<?php
/**
 * Generated by Protobuf protoc plugin.
 *
 * File descriptor : addressbook.proto
 */


namespace ProtobufCompilerTest\Protos;

/**
 * Protobuf message : ProtobufCompilerTest.Protos.Person
 */
class Person extends \Protobuf\AbstractMessage
{

    /**
     * @var \Protobuf\UnknownFieldSet
     */
    protected $unknownFieldSet = null;

    /**
     * @var \Protobuf\Extension\ExtensionFieldMap
     */
    protected $extensions = null;

    /**
     * name required string = 1
     *
     * @var string
     */
    protected $name = null;

    /**
     * id required int32 = 2
     *
     * @var int
     */
    protected $id = null;

    /**
     * email optional string = 3
     *
     * @var string
     */
    protected $email = null;

    /**
     * phone repeated message = 4
     *
     * @var \Protobuf\Collection<\ProtobufCompilerTest\Protos\PhoneNumber>
     */
    protected $phone = null;

    /**
     * Check if 'name' has a value
     *
     * @return bool
     */
    public function hasName()
    {
        return $this->name !== null;
    }

    /**
     * Get 'name' value
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set 'name' value
     *
     * @param string $value
     */
    public function setName($value)
    {
        $this->name = $value;
    }

    /**
     * Check if 'id' has a value
     *
     * @return bool
     */
    public function hasId()
    {
        return $this->id !== null;
    }

    /**
     * Get 'id' value
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set 'id' value
     *
     * @param int $value
     */
    public function setId($value)
    {
        $this->id = $value;
    }

    /**
     * Check if 'email' has a value
     *
     * @return bool
     */
    public function hasEmail()
    {
        return $this->email !== null;
    }

    /**
     * Get 'email' value
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set 'email' value
     *
     * @param string $value
     */
    public function setEmail($value = null)
    {
        $this->email = $value;
    }

    /**
     * Check if 'phone' has a value
     *
     * @return bool
     */
    public function hasPhoneList()
    {
        return $this->phone !== null;
    }

    /**
     * Get 'phone' value
     *
     * @return \Protobuf\Collection<\ProtobufCompilerTest\Protos\PhoneNumber>
     */
    public function getPhoneList()
    {
        return $this->phone;
    }

    /**
     * Set 'phone' value
     *
     * @param \Protobuf\Collection<\ProtobufCompilerTest\Protos\PhoneNumber> $value
     */
    public function setPhoneList(\Protobuf\Collection $value = null)
    {
        $this->phone = $value;
    }

    /**
     * Add a new element to 'phone'
     *
     * @param \ProtobufCompilerTest\Protos\PhoneNumber $value
     */
    public function addPhone(\ProtobufCompilerTest\Protos\PhoneNumber $value)
    {
        if ($this->phone === null) {
            $this->phone = new \Protobuf\MessageCollection();
        }

        $this->phone->add($value);
    }

    /**
     * {@inheritdoc}
     */
    public function extensions()
    {
        if ( $this->extensions !== null) {
            return $this->extensions;
        }

        return $this->extensions = new \Protobuf\Extension\ExtensionFieldMap(__CLASS__);
    }

    /**
     * {@inheritdoc}
     */
    public function unknownFieldSet()
    {
        return $this->unknownFieldSet;
    }

    /**
     * {@inheritdoc}
     */
    public static function fromStream($stream, \Protobuf\Configuration $configuration = null)
    {
        return new self($stream, $configuration);
    }

    /**
     * {@inheritdoc}
     */
    public static function fromArray(array $values)
    {
        if ( ! isset($values['name'])) {
            throw new \InvalidArgumentException('Field "name" (tag 1) is required but has no value.');
        }

        if ( ! isset($values['id'])) {
            throw new \InvalidArgumentException('Field "id" (tag 2) is required but has no value.');
        }

        $message = new self();
        $values  = array_merge([
            'email' => null,
            'phone' => []
        ], $values);

        $message->setName($values['name']);
        $message->setId($values['id']);
        $message->setEmail($values['email']);

        foreach ($values['phone'] as $item) {
            $message->addPhone($item);
        }

        return $message;
    }

    /**
     * {@inheritdoc}
     */
    public static function descriptor()
    {
        return \google\protobuf\DescriptorProto::fromArray([
            'name'      => 'Person',
            'field'     => [
                \google\protobuf\FieldDescriptorProto::fromArray([
                    'number' => 1,
                    'name' => 'name',
                    'type' => \google\protobuf\FieldDescriptorProto\Type::TYPE_STRING(),
                    'label' => \google\protobuf\FieldDescriptorProto\Label::LABEL_REQUIRED()
                ]),
                \google\protobuf\FieldDescriptorProto::fromArray([
                    'number' => 2,
                    'name' => 'id',
                    'type' => \google\protobuf\FieldDescriptorProto\Type::TYPE_INT32(),
                    'label' => \google\protobuf\FieldDescriptorProto\Label::LABEL_REQUIRED()
                ]),
                \google\protobuf\FieldDescriptorProto::fromArray([
                    'number' => 3,
                    'name' => 'email',
                    'type' => \google\protobuf\FieldDescriptorProto\Type::TYPE_STRING(),
                    'label' => \google\protobuf\FieldDescriptorProto\Label::LABEL_OPTIONAL()
                ]),
                \google\protobuf\FieldDescriptorProto::fromArray([
                    'number' => 4,
                    'name' => 'phone',
                    'type' => \google\protobuf\FieldDescriptorProto\Type::TYPE_MESSAGE(),
                    'label' => \google\protobuf\FieldDescriptorProto\Label::LABEL_REPEATED(),
                    'type_name' => '.ProtobufCompilerTest.Protos.PhoneNumber'
                ]),
            ],
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function toStream(\Protobuf\Configuration $configuration = null)
    {
        $config  = $configuration ?: \Protobuf\Configuration::getInstance();
        $context = $config->createWriteContext();
        $stream  = $context->getStream();

        $this->writeTo($context);
        $stream->seek(0);

        return $stream;
    }

    /**
     * {@inheritdoc}
     */
    public function writeTo(\Protobuf\WriteContext $context)
    {
        $stream      = $context->getStream();
        $writer      = $context->getWriter();
        $sizeContext = $context->getComputeSizeContext();

        if ($this->name === null) {
            throw new \UnexpectedValueException('Field "\\ProtobufCompilerTest\\Protos\\Person#name" (tag 1) is required but has no value.');
        }

        if ($this->id === null) {
            throw new \UnexpectedValueException('Field "\\ProtobufCompilerTest\\Protos\\Person#id" (tag 2) is required but has no value.');
        }

        if ($this->name !== null) {
            $writer->writeVarint($stream, 10);
            $writer->writeString($stream, $this->name);
        }

        if ($this->id !== null) {
            $writer->writeVarint($stream, 16);
            $writer->writeVarint($stream, $this->id);
        }

        if ($this->email !== null) {
            $writer->writeVarint($stream, 26);
            $writer->writeString($stream, $this->email);
        }

        if ($this->phone !== null) {
            foreach ($this->phone as $val) {
                $writer->writeVarint($stream, 34);
                $writer->writeVarint($stream, $val->serializedSize($sizeContext));
                $val->writeTo($context);
            }
        }

        if ($this->extensions !== null) {
            $this->extensions->writeTo($context);
        }

        return $stream;
    }

    /**
     * {@inheritdoc}
     */
    public function readFrom(\Protobuf\ReadContext $context)
    {
        $reader = $context->getReader();
        $length = $context->getLength();
        $stream = $context->getStream();

        $limit = ($length !== null)
            ? ($stream->tell() + $length)
            : null;

        while ($limit === null || $stream->tell() < $limit) {

            if ($stream->eof()) {
                break;
            }

            $key  = $reader->readVarint($stream);
            $wire = \Protobuf\WireFormat::getTagWireType($key);
            $tag  = \Protobuf\WireFormat::getTagFieldNumber($key);

            if ($stream->eof()) {
                break;
            }

            if ($tag === 1) {
                \Protobuf\WireFormat::assertWireType($wire, 9);

                $this->name = $reader->readString($stream);

                continue;
            }

            if ($tag === 2) {
                \Protobuf\WireFormat::assertWireType($wire, 5);

                $this->id = $reader->readVarint($stream);

                continue;
            }

            if ($tag === 3) {
                \Protobuf\WireFormat::assertWireType($wire, 9);

                $this->email = $reader->readString($stream);

                continue;
            }

            if ($tag === 4) {
                \Protobuf\WireFormat::assertWireType($wire, 11);

                $innerSize    = $reader->readVarint($stream);
                $innerMessage = new \ProtobufCompilerTest\Protos\PhoneNumber();

                if ($this->phone === null) {
                    $this->phone = new \Protobuf\MessageCollection();
                }

                $this->phone->add($innerMessage);

                $context->setLength($innerSize);
                $innerMessage->readFrom($context);
                $context->setLength($length);

                continue;
            }

            $extensions = $context->getExtensionRegistry();
            $extension  = $extensions ? $extensions->findByNumber(__CLASS__, $tag) : null;

            if ($extension !== null) {
                $this->extensions()->add($extension, $extension->readFrom($context, $wire));

                continue;
            }

            if ($this->unknownFieldSet === null) {
                $this->unknownFieldSet = new \Protobuf\UnknownFieldSet();
            }

            $data    = $reader->readUnknown($stream, $wire);
            $unknown = new \Protobuf\Unknown($tag, $wire, $data);

            $this->unknownFieldSet->add($unknown);

        }
    }

    /**
     * {@inheritdoc}
     */
    public function serializedSize(\Protobuf\ComputeSizeContext $context)
    {
        $calculator = $context->getSizeCalculator();
        $size       = 0;

        if ($this->name !== null) {
            $size += 1;
            $size += $calculator->computeStringSize($this->name);
        }

        if ($this->id !== null) {
            $size += 1;
            $size += $calculator->computeVarintSize($this->id);
        }

        if ($this->email !== null) {
            $size += 1;
            $size += $calculator->computeStringSize($this->email);
        }

        if ($this->phone !== null) {
            foreach ($this->phone as $val) {
                $innerSize = $val->serializedSize($context);

                $size += 1;
                $size += $innerSize;
                $size += $calculator->computeVarintSize($innerSize);
            }
        }

        if ($this->extensions !== null) {
            $size += $this->extensions->serializedSize($context);
        }

        return $size;
    }

    /**
     * {@inheritdoc}
     */
    public function clear()
    {
        $this->name = null;
        $this->id = null;
        $this->email = null;
        $this->phone = null;
    }

    /**
     * {@inheritdoc}
     */
    public function merge(\Protobuf\Message $message)
    {
        if ( ! $message instanceof \ProtobufCompilerTest\Protos\Person) {
            throw new \InvalidArgumentException(sprintf('Argument 1 passed to %s must be a %s, %s given', __METHOD__, __CLASS__, get_class($message)));
        }

        $this->name = ($message->name !== null) ? $message->name : $this->name;
        $this->id = ($message->id !== null) ? $message->id : $this->id;
        $this->email = ($message->email !== null) ? $message->email : $this->email;
        $this->phone = ($message->phone !== null) ? $message->phone : $this->phone;
    }


}

